import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/local_storage/app_preferences.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/features/marketing/entities/promotions_entities/pop_up/pop_up_entity.dart';
import 'package:mac_mobile/features/marketing/presentation/bloc/promotions_bloc/promotions_bloc.dart';
import 'package:mac_mobile/features/survey/entities/survey_type_parameters.dart';
import 'package:video_player/video_player.dart';

import '../../../app/dependency_injection.dart';
import '../../../core/utils/helpers/helper.dart';
import '../../../generated/assets.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../widgets/custom_containers/screen_container.dart';
import '../../../widgets/image_widgets/image_widget.dart';
import '../../../widgets/loading_widgets/skeleton_card_loading.dart';
import '../../car/presentation/bloc/brand_bloc/brand_bloc.dart';
import '../../customer_car/entities/customer_car/customer_car.dart';
import '../../marketing/presentation/bloc/promotion_details_bloc/promotion_details_bloc.dart';
import '../../marketing/presentation/widgets/video_player_widget.dart';
import '../widgets/home_container.dart';
import '../widgets/home_stack_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BrandBloc()),
      ],
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

final List<Map<String, dynamic>> homeContainersContent = [
  {'title': LocaleKeys.home_services, 'icon': Assets.homeIconsServices},
  {'title': LocaleKeys.home_spareParts, 'icon': Assets.homeIconsSpareParts},
  {'title': LocaleKeys.home_carBrands, 'icon': Assets.homeIconsCarBrands},
  {'title': LocaleKeys.home_geofencing, 'icon': Assets.homeIconsGeofencing},
  {'title': LocaleKeys.home_promotions, 'icon': Assets.homeIconsPromotions},
  {'title': LocaleKeys.home_survey, 'icon': Assets.homeIconsFeedback},
  {'title': LocaleKeys.home_contact, 'icon': Assets.homeIconsContact},
];
CustomerCar? userCar =
    getIt<AppPreferences>().userPreferences.getUserData?.customerCar;

class _HomeViewState extends State<HomeView> {

  VideoPlayerController? controller;

  @override
  void initState() {
    context.read<PromotionsBloc>().add(const PromotionsEvent.getBannerPromotions());
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PromotionsBloc, PromotionsState>(
      listener: (context, state) => state.maybeWhen(
          bannerPromotionsLoaded: (promotions) async {
            if(promotions.isNotEmpty && promotions[0].popup!=null) {
          final newPopupLink = promotions[0].popup!.link;
          if (newPopupLink !=
              getIt<AppPreferences>().userPreferences.getPopupLink) {
            buildPopupDialog(context, promotions[0].popup!);
            controller = VideoPlayerController.networkUrl(
                Uri.parse(promotions[0].popup!.image));
            await getIt<AppPreferences>()
                .userPreferences
                .setPopupLink(newPopupLink ?? '');
          }
        }
        return;
          },
          orElse: () {return;}),
      child: ScreenContainer(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.07),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
              child: HomeStackWidget(
                icon: Assets.iconsCheckIcon,
                title: LocaleKeys.home_welcomeToFamily,
                buttonText: LocaleKeys.home_updateOdometer,
                onPressed: () {
                  if (getIt<AppPreferences>()
                              .userPreferences
                              .getUserData
                              ?.customerCar !=
                          null &&
                      getIt<AppPreferences>()
                              .userPreferences
                              .getUserData
                              ?.customerCar
                              ?.status
                              .id ==
                          2) {
                    context.push(RoutesPaths.odometer,
                        extra: getIt<AppPreferences>()
                            .userPreferences
                            .getUserData!
                            .customerCar!
                            .id);
                  } else if (getIt<AppPreferences>()
                          .userPreferences
                          .getUserData
                          ?.customerCar ==
                      null) {
                    buildCarWarningDialog(
                        context, LocaleKeys.messages_mustAddCar.tr());
                  } else {
                    buildCarWarningDialog(
                        context, LocaleKeys.messages_carHasToBeAccepted.tr());
                  }
                },
              ),
            ),
            Expanded(
              child: CustomScrollView(slivers: [
                SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s20)),
                SliverToBoxAdapter(
                    child: BlocBuilder<PromotionsBloc, PromotionsState>(
                        buildWhen: (previous, current) => current.maybeWhen(
                            orElse: () => false,
                            bannerLoading: () => true,
                            bannerPromotionsLoaded: (_) => true),
                        builder: (context, state) {
                          return state.maybeWhen(
                              bannerLoading: () => SkeletonCardLoading(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.17),
                              bannerPromotionsLoaded: (bannerPromotions) =>
                                  bannerPromotions.isNotEmpty
                                      ? SizedBox(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.2,
                                          child: CarouselSlider.builder(
                                              itemCount:
                                                  bannerPromotions.length,
                                              itemBuilder:
                                                  (context, index, realIndex) {
                                                return InkWell(
                                                  onTap: () {
                                                    context
                                                        .read<
                                                            PromotionDetailsBloc>()
                                                        .add(PromotionDetailsEvent
                                                            .setPromotionDetails(
                                                                bannerPromotions[
                                                                    index]));
                                                    context.push(RoutesPaths
                                                        .promotionDetails);
                                                  },
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical:
                                                                AppSizeH.s10),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              AppSizeR.s15),
                                                      color: Theme.of(context)
                                                          .cardColor,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Theme.of(
                                                                  context)
                                                              .shadowColor
                                                              .withOpacity(0.1),
                                                          spreadRadius: 3,
                                                          blurRadius: 3,
                                                        )
                                                      ],
                                                      // border: Border.all(
                                                      //     color: ColorManager.secondaryColor)
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              AppSizeR.s15),
                                                      child: ImageWidget(
                                                          url: bannerPromotions[
                                                                          index]
                                                                      .media
                                                                      .bannerImage
                                                                      ?.isNotEmpty ??
                                                                  false
                                                              ? bannerPromotions[
                                                                      index]
                                                                  .media
                                                                  .bannerImage
                                                              : '',
                                                          fit: BoxFit.fill),
                                                    ),
                                                  ),
                                                );
                                              },
                                              options: CarouselOptions(
                                                autoPlay: true,
                                                height: AppSizeH.s200,
                                                viewportFraction: 0.8,
                                                enlargeCenterPage: true,
                                                disableCenter: true,
                                              )),
                                        )
                                      : const SizedBox.shrink(),
                              orElse: () => SizedBox(
                                  height: MediaQuery.sizeOf(context).height *
                                      0.15));
                        })),
                SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s20)),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                  sliver: SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: AppSizeW.s6,
                        mainAxisSpacing: AppSizeW.s6
                    ),
                    itemBuilder: (context, index) => HomeContainer(
                      padding: EdgeInsets.all(AppSizeW.s4),
                      icon: homeContainersContent[index]['icon'],
                      title: (homeContainersContent[index]['title'].toString()),
                      onTap: () {
                        switch (index) {
                          case 0:
                            {
                              if (getIt<AppPreferences>()
                                          .userPreferences
                                          .getUserData
                                          ?.customerCar !=
                                      null &&
                                  getIt<AppPreferences>()
                                          .userPreferences
                                          .getUserData
                                          ?.customerCar
                                          ?.status
                                          .id ==
                                      2) {
                                context.push(RoutesPaths.dealershipRoute);
                              } else if (getIt<AppPreferences>()
                                      .userPreferences
                                      .getUserData
                                      ?.customerCar ==
                                  null) {
                                buildCarWarningDialog(context,
                                    LocaleKeys.messages_mustAddCar.tr());
                              } else {
                                buildCarWarningDialog(
                                    context,
                                    LocaleKeys.messages_carHasToBeAccepted
                                        .tr());
                              }
                            }
                          case 1:
                            if (getIt<AppPreferences>()
                                        .userPreferences
                                        .getUserData
                                        ?.customerCar !=
                                    null &&
                                getIt<AppPreferences>()
                                        .userPreferences
                                        .getUserData
                                        ?.customerCar
                                        ?.status
                                        .id ==
                                    2) {
                              context.push(RoutesPaths.sparePartsRoute);
                            } else if (getIt<AppPreferences>()
                                    .userPreferences
                                    .getUserData
                                    ?.customerCar ==
                                null) {
                              buildCarWarningDialog(
                                  context, LocaleKeys.messages_mustAddCar.tr());
                            } else {
                              buildCarWarningDialog(context,
                                  LocaleKeys.messages_carHasToBeAccepted.tr());
                            }
                          case 2:
                            context.push(RoutesPaths.brandsRoute);
                          case 3:
                            context.push(RoutesPaths.geofencing);
                          case 4:
                            context.push(RoutesPaths.promotions);
                          case 5:
                            context.push(RoutesPaths.survey,extra: SurveyTypeParameters(typeId: 1).toJson());
                          case 6:
                            context.push(RoutesPaths.support);
                        }
                      },
                    ),
                    itemCount: homeContainersContent.length,
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s30))
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildCarWarningDialog(BuildContext context, String message) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: InkWell(
                onTap: () {
                  context.pop();
                  context.go(RoutesPaths.carRoute);
                },
                child: Column(children: [
                  Text(LocaleKeys.sorry.tr(),
                      style: Theme.of(context).primaryTextTheme.headlineMedium),
                  SizedBox(height: AppSizeH.s20),
                  Text(message,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: ColorManager.black))
                ]),
              ),
            ));
  }

  Future<dynamic> buildPopupDialog(BuildContext context, PopUpEntity popup) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Dialog(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizeW.s10, vertical: AppSizeH.s8),
                height: MediaQuery.sizeOf(context).height * 0.34,
                width: MediaQuery.sizeOf(context).width * 0.98,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              context.pop();
                              controller?.pause();
                            },
                            child: const Icon(Icons.close))
                      ],
                    ),
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Helper.instance.functionsHelper.isVideo(popup.image)
                                ? SizedBox(
                              height: MediaQuery.sizeOf(context).height*0.2,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: VideoPlayerWidget(
                                      video: popup.image,
                                      controller:controller!,
                                                                initializeVideoPlayerFuture: controller!.initialize(),
                                    ),
                                )
                                : ImageWidget(url: popup.image),
                            SizedBox(height: AppSizeH.s10),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (popup.link?.isNotEmpty ?? false) {
                                      Helper.instance.routerHelper
                                          .openLinkWithBrowser(popup.link);
                                    } else {
                                      context.pop();
                                    }
                                  },
                                  child:  Text(LocaleKeys.ok.tr())),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ));
  }
}
