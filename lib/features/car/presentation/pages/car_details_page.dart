import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/extensions/extensions.dart';
import 'package:mac_mobile/features/car/presentation/bloc/brand_bloc/brand_bloc.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';
import 'package:mac_mobile/widgets/custom_divider/screen_divider.dart';
import 'package:mac_mobile/widgets/loading_widgets/small_circular_progress_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/scroll_screen_container.dart';
import '../../../../widgets/image_widgets/image_widget.dart';
import '../../entities/car/car.dart';
import '../../entities/image_with_color/image_with_color.dart';
import '../widgets/catalog_section.dart';
import '../widgets/colored_images_widget.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarDetailsView();
  }
}

class CarDetailsView extends StatefulWidget {
  CarDetailsView({super.key});

  final List<Map<String, dynamic>> specificationGridContent = [
    {
      'icon': Assets.iconsFuel,
      'title': LocaleKeys.car_details_FuelEconomy,
      'value': '',
      'size': AppSizeH.s40
    },
    {
      'icon': Assets.iconsCargo,
      'title': LocaleKeys.car_details_maxCargo,
      'value': '',
      'size': AppSizeH.s40
    },
    {
      'icon': Assets.iconsHip,
      'title': LocaleKeys.car_details_maxAvailHip,
      'value': '',
      'size': AppSizeH.s40
    },
    {
      'icon': Assets.iconsCameraView,
      'title': LocaleKeys.car_details_camera,
      'value': '',
      'size': AppSizeH.s40
    },
    {
      'icon': Assets.iconsEngine,
      'title': LocaleKeys.car_details_theEngine,
      'value': '',
      'size': AppSizeH.s40
    },
    {
      'icon': Assets.iconsSeats,
      'title': LocaleKeys.car_details_seats,
      'value': '',
      'size': AppSizeH.s40
    }
  ];

  @override
  State<CarDetailsView> createState() => _CarDetailsViewState();
}

class _CarDetailsViewState extends State<CarDetailsView> {
  Car? car;
  late int carId;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<BrandBloc>().add(const BrandEvent.started());
        carId = GoRouterState.of(context).extra! as int;
        context.read<BrandBloc>().add(BrandEvent.getCar(carId));
      },
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            forceMaterialTransparency: true),
        body: BlocConsumer<BrandBloc, BrandState>(
            listener: (context, state) {
              state.maybeWhen(
                  carFetched: (car) {
                    if (car == null) {
                      context.pop();
                      Helper.instance.messageHelper.showErrorMessage(
                          context: context,
                          message: LocaleKeys.messages_carNotFound.tr());
                    } else {
                      widget.specificationGridContent[0]['value'] = car.fuel;
                      widget.specificationGridContent[1]['value'] = car.cargo;
                      widget.specificationGridContent[2]['value'] =
                          car.availableHip;
                      widget.specificationGridContent[3]['value'] = car.cameras;
                      widget.specificationGridContent[4]['value'] = car.engine;
                      widget.specificationGridContent[5]['value'] = car.seats;
                    }
                  },
                  orElse: () {});
            },
            builder: (context, state) => state.maybeWhen(
                  carLoading: () =>
                      const ScreenContainer(child: SmallCircularIndicator()),
                  carFetched: (car) {
                    if (car != null) {
                      return ScrollScreenContainer(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          padding: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height * 0.02,
                              bottom: AppSizeH.s40),
                          children: [
                            ColoredImagesWidget(secondaryImages: car.secondaryImage),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppSizeW.s20),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(car.name.name ?? '',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium),
                                            SizedBox(height: AppSizeH.s20),
                                            Text(
                                                '${car.trimLevel.name ?? ' '} , ${car.year ?? ' '}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineLarge),
                                            SizedBox(height: AppSizeH.s20),
                                            ReadMoreText(
                                                '${car.description} ' ?? '',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w400),
                                                trimMode: TrimMode.Line,
                                                trimLines: 5,
                                                colorClickableText:
                                                    ColorManager.primaryColor,
                                                trimCollapsedText:
                                                    LocaleKeys.showMore.tr(),
                                                trimExpandedText:
                                                    LocaleKeys.showLess.tr(),
                                                lessStyle: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headlineSmall,
                                                moreStyle: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headlineSmall),
                                            SizedBox(height: AppSizeH.s10),
                                            const CustomDivider(
                                                color: ColorManager.softGrey),
                                            SizedBox(height: AppSizeH.s10)
                                          ])),
                                  GridView.builder(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppSizeW.s20,
                                          vertical: AppSizeH.s10),
                                      itemCount: widget
                                          .specificationGridContent.length,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisSpacing:
                                                  AppSizeW.s10,
                                              mainAxisSpacing: AppSizeH.s20,
                                              crossAxisCount: 3),
                                      itemBuilder: (context, index) =>
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset(
                                                  widget.specificationGridContent[
                                                      index]['icon'],
                                                ),
                                                SizedBox(
                                                    height: AppSizeH.s20),
                                                Text(
                                                    (widget.specificationGridContent[
                                                                index]
                                                                ['title']
                                                            .toString())
                                                        .tr(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall
                                                        ?.copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                SizedBox(
                                                    height: AppSizeH.s4),
                                                Text(
                                                    widget.specificationGridContent[
                                                        index]['value'],
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium)
                                              ])),
                                  const CustomDivider(
                                      color: ColorManager.softGrey),
                                  SizedBox(height: AppSizeH.s10),
                                  CarouselSlider.builder(
                                      itemCount: car.images.isNotEmpty
                                          ? car.images.length
                                          : 3,
                                      itemBuilder: (context, index,
                                              realIndex) =>
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppSizeR.s15),
                                              child: ImageWidget(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8,
                                                fit: BoxFit.cover,
                                                url: car.images.isNotEmpty
                                                    ? car.images[index]
                                                    : '',
                                              )),
                                      options: CarouselOptions(
                                          viewportFraction: 0.9,
                                          autoPlay: true,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.25,
                                          padEnds: false)),
                                  SizedBox(height: AppSizeH.s40),
                                  CatalogSection(
                                      catalogLink: car.catalogLink ?? '',
                                      virtualCatalogLink:
                                          car.virtualCatalogLink ?? ''),
                                  SizedBox(height: AppSizeH.s30),
                                  if (car.hasInstallment ?? false)
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppSizeW.s20),
                                      child: SizedBox(
                                        width: MediaQuery.sizeOf(context).width,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            context.push(
                                                RoutesPaths.installment,
                                                extra: car);
                                          },
                                          child: Text(
                                              LocaleKeys.home_installment.tr()),
                                        ),
                                      ),
                                    )
                                ])
                          ]);
                    } else {
                      return const SizedBox();
                    }
                  },
                  orElse: () => const SizedBox(),
                )));
  }
}


