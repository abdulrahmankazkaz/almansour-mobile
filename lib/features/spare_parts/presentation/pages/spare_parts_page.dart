import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/widgets/empty_widgets/empty_lottie_widget.dart';
import 'package:mac_mobile/widgets/loading_widgets/skeleton_list_loading.dart';

import '../../../../core/utils/resources/app_icons.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/loading_widgets/small_circular_progress_indicator.dart';
import '../../../../widgets/text_fields/custom_text_field.dart';
import '../../../cart/presentation/bloc/cart_cubit/cart_cubit.dart';
import '../bloc/spare_parts_bloc.dart';
import '../widgets/spare_part_item_widget.dart';

class SparePartsPage extends StatelessWidget {
  const SparePartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SparePartsView();
  }
}

class SparePartsView extends StatefulWidget {
  const SparePartsView({super.key});

  @override
  State<SparePartsView> createState() => _SparePartsViewState();
}

class _SparePartsViewState extends State<SparePartsView> {
  @override
  void initState() {
    context.read<SparePartsBloc>().add(const SparePartsEvent.getSpareParts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SparePartsBloc, SparePartsState>(
      builder: (context, state) {
        return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
                forceMaterialTransparency: true,
                toolbarHeight: AppSizeH.s100,
                title: Text(LocaleKeys.home_spareParts.tr()),
                centerTitle: true,
                titleTextStyle: Theme.of(context).textTheme.headlineLarge),
            floatingActionButton:
                BlocBuilder<CartCubit, CartState>(builder: (context, state) {
              return Stack(alignment: Alignment.topRight, children: [
                if(state.items.isNotEmpty)
                FloatingActionButton(
                  backgroundColor: ColorManager.secondaryColor,
                  shape: const CircleBorder(),
                  onPressed: () {
                    context.push(RoutesPaths.cart);
                  },
                  child: const Icon(Icons.shopping_cart_outlined),
                ),
                state.items.isNotEmpty
                    ? Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            shape: BoxShape.circle),
                        padding: EdgeInsets.all(AppSizeW.s5),
                        child: Text(state.items.length.toString()))
                    : SizedBox.shrink(),
              ]);
            }),
            body: state.maybeWhen(
                loaded: (spareParts) => spareParts.isNotEmpty
                    ? ScreenContainer(
                        padding: EdgeInsets.only(
                            top: MediaQuery.sizeOf(context).height * 0.18),
                        child: RefreshIndicator(
                          backgroundColor: Theme.of(context).cardColor,
                          onRefresh: () async => context
                              .read<SparePartsBloc>()
                              .add(const SparePartsEvent.getSpareParts(
                                  refresh: true)),
                          child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppSizeW.s20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomTextField(
                                          onChanged: (value) => context
                                              .read<SparePartsBloc>()
                                              .add(SparePartsEvent
                                                  .searchSpareParts(value)),
                                          hint: LocaleKeys.search.tr(),
                                          suffixIcon:
                                              const Icon(AppIcons.search),
                                        ),
                                        state.maybeWhen(
                                            loaded: (spareParts) =>
                                                ListView.builder(
                                                    shrinkWrap: true,
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    padding: EdgeInsets.only(
                                                        top: AppSizeH.s30,
                                                        bottom: AppSizeH.s80),
                                                    itemCount:
                                                        spareParts.length,
                                                    itemBuilder: (context, index) =>
                                                        SparePartItemWidget(
                                                          key: UniqueKey(),
                                                          sparePart:
                                                              spareParts[index],
                                                        )),
                                            empty: () => Padding(
                                                padding: EdgeInsets.all(
                                                    AppSizeH.s150),
                                                child: Text(LocaleKeys.noResultFound
                                                    .tr())),
                                            failed: (message) => Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical:
                                                        MediaQuery.sizeOf(context).height *
                                                            0.3),
                                                child: Text(message)),
                                            loading: () => Padding(
                                                  padding: EdgeInsets.only(
                                                      top: AppSizeH.s30),
                                                  child: SkeletonListLoading(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.11),
                                                ),
                                            orElse: () => Padding(
                                                padding: EdgeInsets.all(AppSizeH.s150),
                                                child: const SmallCircularIndicator())),
                                      ]))),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.sizeOf(context).height * 0.18),
                        child: EmptyLottieWidget(
                          title: LocaleKeys.emptyTitle.tr(),
                          description: LocaleKeys.emptyDescription.tr(),
                          lottie: Assets.lottieEmpty,
                        ),
                      ),
                orElse: () {}));
      },
    );
  }
}
