import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/car/presentation/widgets/empty_cars_widget.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';

import '../../../../../core/utils/resources/resources.dart';
import '../../../../../widgets/custom_containers/screen_container.dart';
import '../../../../../widgets/empty_widgets/empty_data_widget.dart';
import '../../../../../widgets/image_widgets/image_widget.dart';
import '../../../../../widgets/loading_widgets/skeleton_list_loading.dart';
import '../../../entities/promotions_entities/promotion/promotion.dart';
import '../../bloc/promotion_details_bloc/promotion_details_bloc.dart';
import '../../bloc/promotions_bloc/promotions_bloc.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PromotionsView();
  }
}

class PromotionsView extends StatefulWidget {
  const PromotionsView({super.key});

  @override
  State<PromotionsView> createState() => _PromotionsViewState();
}

class _PromotionsViewState extends State<PromotionsView> {
  @override
  void initState() {
    context.read<PromotionsBloc>().add(const PromotionsEvent.getPromotions());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(LocaleKeys.home_promotions.tr()),
        ),
        body: ScreenContainer(
          padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.15,
              right: AppSizeW.s20,
              left: AppSizeW.s20),
          child: BlocBuilder<PromotionsBloc, PromotionsState>(
              builder: (context, state) {
            return state.maybeWhen(
                loading: () => const SkeletonListLoading(),
                loaded: (promotions) =>
                promotions.isEmpty?EmptyDataWidget(message: LocaleKeys.empty.tr()):
                    PromotionListWidget(promotions: promotions),
                orElse: () => const SizedBox.shrink());
          }),
        ));
  }
}


class PromotionListWidget extends StatelessWidget {
  final List<Promotion> promotions;

  const PromotionListWidget({super.key, required this.promotions});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: AppSizeW.s10, right: AppSizeW.s10,bottom: AppSizeH.s28),
        itemCount: promotions.length,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              context.read<PromotionDetailsBloc>().add(
                  PromotionDetailsEvent.setPromotionDetails(promotions[index]));
              context.push(RoutesPaths.promotionDetails);
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizeR.s15),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 3
                  )
                ],
                color: Theme.of(context).cardColor
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                if(promotions[index].media.primaryImage.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: context.locale == AppLanguage.english.local()? Radius.circular(AppSizeR.s15):Radius.zero,
                      bottomLeft: context.locale == AppLanguage.english.local()? Radius.circular(AppSizeR.s15):Radius.zero,
                      topRight: context.locale == AppLanguage.arabic.local()? Radius.circular(AppSizeR.s15):Radius.zero,
                      bottomRight: context.locale == AppLanguage.arabic.local()? Radius.circular(AppSizeR.s15):Radius.zero,
                  ),
                  child: ImageWidget(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      height: MediaQuery.sizeOf(context).height,
                      url: promotions[index].media.primaryImage[0],
                      fit: BoxFit.fill),
                ),
                    const Spacer(),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizeW.s12, vertical: AppSizeH.s8),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(promotions[index].title,
                              style: Theme.of(context).textTheme.headlineSmall),
                          // Flexible(
                          //     child: Text(promotions[index].description,
                          //         style:
                          //             Theme.of(context).textTheme.bodyMedium))
                        ]),
                  ),
                )
              ]),
            )),
        separatorBuilder: (context, index) => SizedBox(height: AppSizeH.s20));
  }
}
