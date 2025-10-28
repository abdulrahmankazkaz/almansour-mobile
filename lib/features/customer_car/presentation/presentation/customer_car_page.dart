import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/image_widgets/image_widget.dart';
import '../../../../widgets/loading_widgets/small_circular_progress_indicator.dart';
import '../../../home/widgets/home_stack_widget.dart';
import '../bloc/customer_car_bloc/customer_car_bloc.dart';
import '../widgets/add_car_widget.dart';
import '../widgets/car_odometer_section.dart';
import '../widgets/oil_change_reminder_section.dart';

class CustomerCarPage extends StatelessWidget {
  const CustomerCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CustomerCarBloc(), child: const CustomerCarView());
  }
}

class CustomerCarView extends StatefulWidget {
  const CustomerCarView({super.key});

  @override
  State<CustomerCarView> createState() => _CustomerCarViewState();
}

class _CustomerCarViewState extends State<CustomerCarView> {
  @override
  void initState() {
    context
        .read<CustomerCarBloc>()
        .add(const CustomerCarEvent.getCustomerCar());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      padding: EdgeInsets.only(
          top: MediaQuery.sizeOf(context).height * 0.1,
          bottom: AppSizeH.s20,
          right: AppSizeW.s20,
          left: AppSizeW.s20),
      child: BlocBuilder<CustomerCarBloc, CustomerCarState>(
        builder: (context, state) {
          return state.maybeWhen(
              getSuccessfully: (car) {
                if (car.status.id == 2) {
                  return CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Center(
                            child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          child: ImageWidget(
                            url: car.carDetails.carName.imageUrl,
                            defaultImage: Assets.imagesAddCar,
                            placeHolder: Assets.imagesAddCar,
                            fit: BoxFit.fill,
                          ),
                        )),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s30)),
                      SliverToBoxAdapter(
                        child: Text(
                            '${car.carDetails.brand.name} ${car.carDetails.carName.name} ${car.yearOfModel}',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headlineLarge),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s10)),
                      SliverToBoxAdapter(
                        child: HomeStackWidget(
                          icon: Assets.iconsCheckIcon,
                          title: car.isFromMac
                              ? LocaleKeys.customer_car_carWarranty
                              : LocaleKeys.customer_car_carNotWarranty,
                          buttonText: LocaleKeys.home_updateOdometer,
                          onPressed: () =>
                              context.push(RoutesPaths.odometer, extra: car.id),
                        ),
                      ),
                      SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s30)),
                      SliverToBoxAdapter(
                          child: CarOdometerSection(
                              odometer: car.odometer.toString(),
                              carId: car.id)),
                      SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s30)),
                      SliverToBoxAdapter(
                          child:
                              OilChangeReminderSection(odometer: car.odometer)),
                    ],
                  );
                } else {
                  return CarStatusWidget(statusId: car.status.id,rejectReason: car.rejectReason,);
                }
              },
              mustAddCar: () => const AddCarWidget(),
              failed: (errorMessage) => Center(child: Text(errorMessage)),
              orElse: () {
                return const SmallCircularIndicator();
              });
        },
      ),
    );
  }
}

class CarStatusWidget extends StatelessWidget {
  final int statusId;
  final String rejectReason;

  const CarStatusWidget({super.key, required this.statusId,this.rejectReason=''});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
      Container(
          height: MediaQuery.sizeOf(context).height * 0.28,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Lottie.asset(
              statusId == 1 ? Assets.lottieBlueLoading : Assets.lottieSadFace,
              fit: BoxFit.fitHeight)),
      SizedBox(height: AppSizeH.s30),
      Text(
          statusId == 1
              ? LocaleKeys.customer_car_carUnderReview.tr()
              : LocaleKeys.customer_car_carRejected.tr(),
          style: Theme.of(context).textTheme.headlineLarge),
      SizedBox(height: AppSizeH.s14),
      Text(
          statusId == 1
              ? LocaleKeys.customer_car_carUnderReviewDescription.tr()
              : LocaleKeys.customer_car_carRejectedDescription.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium),
      if(rejectReason.isNotEmpty && statusId ==3)
        ...{SizedBox(height: AppSizeH.s14),
          Text('\"$rejectReason\"', style: Theme
              .of(context)
              .textTheme
              .headlineSmall, textAlign: TextAlign.center),
          SizedBox(height: AppSizeH.s14),
          Text(LocaleKeys.customer_car_pleaseTryAgain.tr(),style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
        },
    if (statusId != 1)
        ...{
        SizedBox(height: AppSizeH.s20),
          ElevatedButton(
              onPressed: () {
                context.push(RoutesPaths.addCarRoute);
              },
              child: Text(LocaleKeys.customer_car_addYourCarAgain.tr()))
        }
    ]);
  }
}
