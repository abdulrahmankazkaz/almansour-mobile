import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/helpers/helper.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';
import 'package:mac_mobile/widgets/custom_divider/screen_divider.dart';
import 'package:mac_mobile/widgets/image_widgets/image_widget.dart';
import 'package:mac_mobile/widgets/loading_widgets/small_circular_progress_indicator.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/empty_widgets/empty_data_widget.dart';
import '../../entities/car_brand/car_brand.dart';
import '../bloc/brand_cars_bloc/brand_cars_bloc.dart';
import '../widgets/empty_cars_widget.dart';

class BrandCarsPage extends StatelessWidget {
  const BrandCarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BrandCarsView();
  }
}

class BrandCarsView extends StatefulWidget {
  const BrandCarsView({super.key});

  @override
  State<BrandCarsView> createState() => _BrandCarsViewState();
}

class _BrandCarsViewState extends State<BrandCarsView> {
  CarBrand brand = const CarBrand(id: 0);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      brand = GoRouterState.of(context).extra! as CarBrand;
      context.read<BrandCarsBloc>().add(BrandCarsEvent.getBrandCars(brand.id));
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            toolbarHeight: AppSizeH.s100, forceMaterialTransparency: true),
        body: ScreenContainer(
          child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.11),
              child: BlocConsumer<BrandCarsBloc, BrandCarsState>(
                listener: (context, state) => state.whenOrNull(
                    failed: (errorMessage) => Helper.instance.messageHelper
                        .showErrorMessage(
                            context: context, message: errorMessage)),
                builder: (context, state) => state.maybeWhen(
                    loading: () => const SmallCircularIndicator(),
                    loaded: (cars) => Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: AppSizeH.s50),
                                child: ImageWidget(
                                    url: brand.image,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.1,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    fit: BoxFit.cover)),
                            cars.isEmpty
                                ? EmptyDataWidget(
                                    message: LocaleKeys.empty.tr())
                                : Expanded(
                                    child: RefreshIndicator(
                                      backgroundColor: Theme.of(context).cardColor,
                                      onRefresh: () async => context
                                          .read<BrandCarsBloc>()
                                          .add(BrandCarsEvent.getBrandCars(
                                              brand.id)),
                                      child: ListView.separated(
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        padding: EdgeInsets.only(
                                            left: AppSizeW.s20,right: AppSizeW.s20,bottom: AppSizeH.s30),
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    context.push(
                                                        RoutesPaths
                                                            .carDetailsRoute,
                                                        extra: cars[index].id);
                                                  },
                                                  child: Row(children: [
                                                    ImageWidget(
                                                      url:
                                                          cars[index].mainImage,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.09,
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.3,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    SizedBox(
                                                        width: AppSizeW.s20),
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                  '${cars[index].name.name} ${cars[index].trimLevel.name} ${cars[index].year}',
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headlineMedium),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                              height:
                                                                  AppSizeH.s8),
                                                          Text(
                                                            // method to get dots in price int
                                                            '${Helper.instance.functionsHelper.insertPeriod(cars[index].price.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium,
                                                          )
                                                        ]),
                                                    const Spacer(flex: 2)
                                                  ])),
                                              if (cars.length == 1)
                                                SizedBox(
                                                    height: AppSizeH.s70,
                                                    child:
                                                        const CustomDivider()),
                                            ],
                                          );
                                        },
                                        itemCount: cars.length,
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
                                                height: AppSizeH.s70,
                                                child: const CustomDivider()),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                    failed: (errorMessage) => const SizedBox.shrink(),
                    orElse: () => const SmallCircularIndicator()),
              )),
        ));
  }
}
