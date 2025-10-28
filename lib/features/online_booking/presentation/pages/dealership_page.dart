import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/dealership_bloc/dealership_bloc.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';
import 'package:mac_mobile/widgets/loading_widgets/small_circular_progress_indicator.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../../widgets/loading_widgets/skeleton_list_loading.dart';
import '../../../cart/presentation/bloc/map_bloc/map_bloc.dart';
import '../widgets/dealership_section.dart';

class DealershipPage extends StatelessWidget {
  const DealershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => DealershipBloc()),
          BlocProvider(create: (context) => MapBloc()),
        ],
        child: const DealershipView()
    );
  }
}

class DealershipView extends StatefulWidget {
  const DealershipView({super.key});

  @override
  State<DealershipView> createState() => _DealershipViewState();
}

class _DealershipViewState extends State<DealershipView> {
  @override
  void initState() {
    context.read<DealershipBloc>().add(const DealershipEvent.getDealership());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: Theme
            .of(context)
            .textTheme
            .headlineLarge,
        backgroundColor: Colors.transparent,
        title: Text(LocaleKeys.home_services.tr()),
      ),
      body: ScreenContainer(
        padding: EdgeInsets.only(
            top: MediaQuery
                .sizeOf(context)
                .height * 0.16),
        child: SingleChildScrollView(
          child: BlocBuilder<DealershipBloc, DealershipState>(
              builder: (context, state) {
                return state.maybeWhen(
                    loaded: (dealerships) =>
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DealershipsSection(dealerships: dealerships),
                              const CustomDivider(),
                              SizedBox(height: AppSizeH.s30),
                              Text(LocaleKeys.mobileService_mobileService.tr(),
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .headlineSmall),
                              SizedBox(height: AppSizeH.s20),
                              InkWell(
                                  onTap: () {
                                    context.push(RoutesPaths.mobileService);
                                  },
                                  child: Container(
                                    width: MediaQuery
                                        .sizeOf(context)
                                        .width,
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height * 0.1,
                                    padding: EdgeInsets.symmetric(
                                        vertical: AppSizeH.s20,
                                        horizontal: AppSizeW.s10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          AppSizeR.s15),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Theme.of(context).shadowColor.withOpacity(0.1),
                                              spreadRadius: 3,
                                              blurRadius: 3)
                                        ],
                                        color: Theme.of(context).cardColor
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            Assets.iconsOnSiteMaintenance,
                                            width: MediaQuery
                                                .sizeOf(context)
                                                .width * 0.15),
                                        SizedBox(width: AppSizeW.s20),
                                        Text(LocaleKeys.mobileService_mobileService.tr(), style: Theme
                                            .of(context)
                                            .primaryTextTheme
                                            .headlineLarge
                                            ?.copyWith(
                                            fontSize: AppSizeSp.s20))
                                      ],
                                    ),
                                  )
                              ),
                              SizedBox(height: AppSizeH.s30),
                              Text(LocaleKeys.quickService_quickService.tr(),
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .headlineSmall),
                              SizedBox(height: AppSizeH.s20),
                              InkWell(
                                  onTap: () {
                                    context.push(RoutesPaths.quickService);
                                  },
                                  child: Container(
                                    width: MediaQuery
                                        .sizeOf(context)
                                        .width,
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height * 0.1,
                                    padding: EdgeInsets.symmetric(
                                        vertical: AppSizeH.s20,
                                        horizontal: AppSizeW.s10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            AppSizeR.s15),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Theme.of(context).shadowColor.withOpacity(0.1),
                                              spreadRadius: 3,
                                              blurRadius: 3)
                                        ],
                                        color: Theme.of(context).cardColor
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            Assets.iconsOnSiteMaintenance,
                                            width: MediaQuery
                                                .sizeOf(context)
                                                .width * 0.15),
                                        SizedBox(width: AppSizeW.s20),
                                        Text(LocaleKeys.quickService_quickService.tr(), style: Theme
                                            .of(context)
                                            .primaryTextTheme
                                            .headlineLarge
                                            ?.copyWith(
                                            fontSize: AppSizeSp.s20))
                                      ],
                                    ),
                                  )
                              ),
                              SizedBox(height: AppSizeH.s40),

                            ],
                          ),
                        ),
                    loading: () =>
                        SkeletonListLoading(
                            height: MediaQuery
                                .sizeOf(context)
                                .height * 0.11),
                    failed: (errorMessage) =>
                        Column(
                          children: [
                            SizedBox(height: AppSizeH.s180),
                            Text(errorMessage)
                          ],
                        ),
                    orElse: () =>
                        Column(
                          children: [
                            SizedBox(height: AppSizeH.s180),
                            const SmallCircularIndicator(),
                          ],
                        ));
              }),
        ),
      ),
    );
  }
}
