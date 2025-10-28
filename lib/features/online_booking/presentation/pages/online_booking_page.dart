import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../../widgets/date_picker/custom_time_picker.dart';
import '../../../../widgets/date_picker/day_date_picker.dart';
import '../../../../widgets/empty_widgets/empty_data_widget.dart';
import '../../../../widgets/loading_widgets/small_circular_progress_indicator.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../car/presentation/widgets/empty_cars_widget.dart';
import '../../../service_offer/entities/service_offer/service_offer.dart';
import '../../../service_offer/presentation/bloc/service_offer_bloc.dart';
import '../../entities/available_time/available_time.dart';
import '../bloc/appointment_bloc/appointment_bloc.dart';
import '../bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';
import '../bloc/appointment_details_bloc/appointment_details_bloc.dart';
import '../bloc/available_appointment_bloc/available_appointment_bloc.dart';
import '../widgets/appointment_type_section.dart';

class OnlineBookingPage extends StatelessWidget {
  const OnlineBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ServiceOfferBloc(),
        child: const OnlineBookingView());
  }
}

class OnlineBookingView extends StatefulWidget {
  const OnlineBookingView({super.key});

  @override
  State<OnlineBookingView> createState() => _OnlineBookingViewState();
}

class _OnlineBookingViewState extends State<OnlineBookingView> {
  int appointmentTypeSelected = -1;
  final selectedDateNotifier = ValueNotifier<DateTime?>(null);



  @override
  void initState() {
    context.read<AppointmentBloc>().add(const AppointmentEvent.getType());
    context
        .read<AvailableAppointmentBloc>()
        .add(const AvailableAppointmentEvent.started());
    context
        .read<AppointmentDetailsBloc>()
        .add(const AppointmentDetailsEvent.started());
    context
        .read<AppointmentCheckoutBloc>()
        .add(const AppointmentCheckoutEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        forceMaterialTransparency: true,
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
        title: Text(LocaleKeys.home_online_booking.tr()),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<AvailableAppointmentBloc, AvailableAppointmentState>(
              listener: (context, state) {
            state.maybeWhen(
                failed: (errorMessage) {
                  Helper.instance.messageHelper.showErrorMessage(
                      context: context, message: errorMessage);
                },
                orElse: () {});
          }),
          BlocListener<AppointmentDetailsBloc, AppointmentDetailsState>(
              listener: (context, state) {
            state.maybeWhen(
                typeSelected: (type) {
                  appointmentTypeSelected = type.id;
                  if (type.id == 1) {
                    context
                        .read<ServiceOfferBloc>()
                        .add(const ServiceOfferEvent.get());
                  }
                },
                orElse: () {});
          }),
          BlocListener<AppointmentBloc, AppointmentState>(
              listener: (context, state) {
            state.maybeWhen(
                createLoading: () => LoadingDialog.show(context),
                invalidParameters: (validationMessage) =>
                    Helper.instance.messageHelper.showToastMessage(
                        context: context, message: validationMessage),
                createSuccessfully: () {
                  LoadingDialog.hide(context);
                  if (appointmentTypeSelected != 1) {
                    context.go(RoutesPaths.orderSuccess,extra: 0);
                  }
                },
                failed: (errorMessage) {
                  LoadingDialog.hide(context);
                  Helper.instance.messageHelper.showErrorMessage(
                      context: context, message: errorMessage);
                },
                orElse: () {});
          })
        ],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                    padding: EdgeInsets.only(top: AppSizeH.s30),
                    height: AppSizeW.s200,
                    width: AppSizeW.s200,
                    child: SvgPicture.asset(Assets.iconsOnlineBooking)),
              ),
              SizedBox(height: AppSizeH.s20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                child: Column(children: [
                  Text(LocaleKeys.onlineBooking_onlineAppointment.tr(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(fontSize: 13.sp)),
                  SizedBox(height: AppSizeH.s20),
                   AppointmentTypeSection(
                    selectedDateNotifier:selectedDateNotifier ,
                  ),
                ]),
              ),
              SizedBox(height: AppSizeH.s20),
              BlocBuilder<AppointmentDetailsBloc, AppointmentDetailsState>(
                  builder: (context, state) {
                return state.maybeWhen(
                    typeSelected: (type) {
                      return Padding(
                        padding: EdgeInsetsGeometry.symmetric(
                            horizontal: AppSizeW.s20),
                        child: Column(
                          children: [
                            CustomGlobalDayPicker<AvailableAppointmentBloc,
                                AvailableAppointmentState>(
                              label: LocaleKeys.onlineBooking_date.tr(),
                              bloc: context.read<AvailableAppointmentBloc>(),
                              extractActiveDates: (state) {
                                return state.maybeWhen(
                                  loaded: (availableDates, availableTimes) {
                                    return availableDates
                                        .map((d) => DateTime.tryParse(d))
                                        .whereType<DateTime>()
                                        .toList();
                                  },
                                  orElse: () => [],
                                );
                              },
                              onDateChange: (date) {
                                final formatted =
                                    DateFormat('yyyy-MM-dd', 'en')
                                        .format(date);
                                context
                                    .read<AppointmentCheckoutBloc>()
                                    .appointmentDate = formatted;
                                context
                                    .read<AppointmentBloc>()
                                    .setSelectedDate(formatted);
                                context.read<AvailableAppointmentBloc>().add(
                                      AvailableAppointmentEvent
                                          .determineAvailableTime(formatted),
                                    );
                              }, selectedDateNotifier: selectedDateNotifier,
                            ),
                            SizedBox(height: AppSizeH.s20),
                            CustomTimePicker<AvailableAppointmentState>(
                              label: LocaleKeys.onlineBooking_time.tr(),
                              bloc: context.read<AvailableAppointmentBloc>(),
                              extractTimes: (state) => state.maybeWhen(
                                  loaded: (availableDates, availableTimes) {
                                    if (availableTimes != null) {
                                      return availableTimes
                                          .map((e) => e.time)
                                          .toList();
                                    } else {
                                      return [


                                      ];
                                    }
                                  },
                                  orElse: () => []),
                              extractDisabledIndices: (state) =>
                                  state.maybeWhen(
                                      loaded:
                                          (availableDates, availableTimes) {
                                        if (availableTimes != null) {
                                          return availableTimes
                                              .asMap()
                                              .entries
                                              .where(
                                                  (e) => !e.value.isAvailable)
                                              .map((e) => e.key)
                                              .toList();
                                        } else {
                                          return [];
                                        }
                                      },
                                      orElse: () => []),
                              onTimeSelected: (time) {
                                context
                                    .read<AppointmentBloc>()
                                    .setSelectedTime(time);
                                context
                                    .read<AppointmentCheckoutBloc>()
                                    .appointmentTime = time;
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   SnackBar(content: Text('You selected $time'),duration: Duration(milliseconds: 300),),
                                // );
                              },
                            ),
                            SizedBox(height: AppSizeH.s20),
                            if (type.id == 1) ...{
                              BlocBuilder<ServiceOfferBloc,
                                  ServiceOfferState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                      loading: () =>
                                          const SmallCircularIndicator(),
                                      loaded: (serviceOffers) =>
                                          ServiceOffersSection(
                                              serviceOffers: serviceOffers),
                                      empty: () => EmptyDataWidget(
                                          message: LocaleKeys
                                              .onlineBooking_noServiceOfferAvailable
                                              .tr()),
                                      orElse: () => const SizedBox.shrink());
                                },
                              )
                            },
                            SizedBox(height: AppSizeH.s20),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s20),
                              width: MediaQuery.sizeOf(context).width,
                              height: AppSizeH.s50,
                              child: ElevatedButton(
                                  onPressed: () {
                                    context
                                            .read<AppointmentCheckoutBloc>()
                                            .appointmentTypeId =
                                        appointmentTypeSelected;
                                    if (appointmentTypeSelected == 1) {
                                      context
                                              .read<AppointmentCheckoutBloc>()
                                              .appointmentId =
                                          -1; //to call store regular api not initial payment
                                      if (context
                                              .read<AppointmentCheckoutBloc>()
                                              .appointmentTime
                                              .isEmpty ||
                                          context
                                              .read<AppointmentCheckoutBloc>()
                                              .appointmentDate
                                              .isEmpty) {
                                        Helper.instance.messageHelper
                                            .showToastMessage(
                                                context: context,
                                                message: LocaleKeys
                                                    .onlineBooking_chooseBookingTime
                                                    .tr());
                                      } else if (context
                                              .read<AppointmentCheckoutBloc>()
                                              .serviceOfferId ==
                                          -1) {
                                        Helper.instance.messageHelper
                                            .showToastMessage(
                                                context: context,
                                                message: LocaleKeys
                                                    .onlineBooking_chooseServiceOffer
                                                    .tr());
                                      } else {
                                        context.push(
                                            RoutesPaths.appointmentCheckout);
                                      }
                                    } else {
                                      context.read<AppointmentBloc>().add(
                                          const AppointmentEvent.create());
                                    }
                                  },
                                  child: Text(
                                      LocaleKeys.onlineBooking_bookNow.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              color: ColorManager.surface,
                                              fontWeight: FontWeight.w400))),
                            ),
                            SizedBox(height: AppSizeH.s20)
                          ],
                        ),
                      );
                    },
                    orElse: () => const SizedBox.shrink());
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceOffersSection extends StatefulWidget {
  final List<ServiceOffer> serviceOffers;

  const ServiceOffersSection({required this.serviceOffers, super.key});

  @override
  State<ServiceOffersSection> createState() => _ServiceOffersSectionState();
}

class _ServiceOffersSectionState extends State<ServiceOffersSection> {
  ValueNotifier<int> selectedIndex = ValueNotifier(-1);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(LocaleKeys.onlineBooking_chooseServiceOffer.tr(),style:Theme.of(context).textTheme.labelLarge),
        SizedBox(height: AppSizeH.s20),
        ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => AnimatedBuilder(
                animation: selectedIndex,
                builder: (context, child) => Column(children: [
                      InkWell(
                        onTap: () {
                          if (selectedIndex.value == index) {
                            selectedIndex.value = -1;
                            context
                                .read<AppointmentBloc>()
                                .selectedServiceOffer = -1;
                            context
                                .read<AppointmentCheckoutBloc>()
                                .serviceOfferId = -1;
                          } else {
                            selectedIndex.value = index;
                            context
                                    .read<AppointmentCheckoutBloc>()
                                    .serviceOfferId =
                                widget.serviceOffers[index].id;
                            context
                                    .read<AppointmentBloc>()
                                    .selectedServiceOffer =
                                widget.serviceOffers[index].id;
                          }
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: AppSizeH.s50,
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppSizeR.s15),
                              boxShadow: [
                                BoxShadow(
                                    color: Theme.of(context)
                                        .shadowColor
                                        .withValues(alpha: 0.1),
                                    spreadRadius: 3,
                                    blurRadius: 3)
                              ],
                              color: Theme.of(context).cardColor),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.serviceOffers[index].title),
                              Text(
                                  '${Helper.instance.functionsHelper.insertPeriod(widget.serviceOffers[index].price.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}'),
                              if (selectedIndex.value == index)
                                const Icon(Icons.check_circle_outline,
                                    color: Colors.green)
                            ],
                          )),
                        ),
                      ),
                      if (selectedIndex.value == index)
                        Container(
                          margin: EdgeInsets.symmetric(vertical: AppSizeH.s10),
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                      '${LocaleKeys.customer_car_odometer.tr()} :',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  SizedBox(width: AppSizeW.s10),
                                  Text(widget.serviceOffers[index].odometer
                                      .toString())
                                ]),
                                SizedBox(height: AppSizeH.s10),
                                Text('${LocaleKeys.items.tr()} :',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                                SizedBox(height: AppSizeH.s10),
                                ...List.generate(
                                    widget.serviceOffers[index].items.length,
                                    (itemIndex) => Column(children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(widget
                                                    .serviceOffers[index]
                                                    .items[itemIndex]
                                                    .description),
                                              ]),
                                          const CustomDivider()
                                        ]))
                              ]),
                        )
                    ])),
            separatorBuilder: (context, index) =>
                SizedBox(height: AppSizeH.s10),
            itemCount: widget.serviceOffers.length),
      ],
    );
  }
}
