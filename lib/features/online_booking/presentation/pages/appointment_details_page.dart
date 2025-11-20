import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/widgets/custom_containers/card_container.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../../widgets/loading_widgets/small_circular_progress_indicator.dart';
import '../../../cart/entities/order_details/order_details_total.dart';
import '../../../cart/presentation/widgets/order_totals_details_widget.dart';
import '../../entities/parameters/approve_update_appointment_parameters.dart';
import '../bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';
import '../bloc/appointment_details_bloc/appointment_details_bloc.dart';

class AppointmentDetailsPage extends StatelessWidget {
  const AppointmentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppointmentDetailsView();
  }
}

class AppointmentDetailsView extends StatelessWidget {
  const AppointmentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            title: Text(LocaleKeys.onlineBooking_appointmentDetails.tr()),
            centerTitle: true,
            titleTextStyle: Theme.of(context).textTheme.headlineLarge,
            forceMaterialTransparency: true),
        body: ScreenContainer(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.14,
                left: AppSizeW.s20,
                right: AppSizeW.s20),
            child: BlocBuilder<AppointmentDetailsBloc, AppointmentDetailsState>(
                buildWhen: (previous, current) => current.maybeWhen(
                    orElse: () => false,
                    loading: () => true,
                    appointmentSelected: (_) => true),
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => const SmallCircularIndicator(),
                      appointmentSelected: (appointment) => SingleChildScrollView(
                              child: Column(children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if(appointment.serviceOffer != null)
                                    ...{CardContainer(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.build_circle,color: Theme.of(context).primaryColor),
                                              Text(' ${LocaleKeys.items.tr()} :',
                                                  style: Theme
                                                      .of(context)
                                                      .textTheme
                                                      .headlineMedium),
                                            ],
                                          ),
                                          SizedBox(height: AppSizeH.s20),
                                          ...List.generate(
                                              appointment
                                                  .serviceOffer!.items.length,
                                                  (index) =>
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(appointment
                                                          .serviceOffer!
                                                          .items[index]
                                                          .description,
                                                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: ColorManager.grayFontColor),
                                                      ),
                                                      if(index != appointment.serviceOffer!.items.length-1)
                                                       Divider(color: ColorManager.whiteGrey)
                                                    ],
                                                  )),
                                          SizedBox(height: AppSizeH.s20),

                                        ],
                                      ),
                                    ),
                                      SizedBox(height: AppSizeH.s20)
                                    },
                                  CardContainer(
                                    child: Column(
                                      crossAxisAlignment:  CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.calendar_month_rounded,color: Theme.of(context).primaryColor),
                                            SizedBox(width: AppSizeW.s2),
                                            Text(
                                                LocaleKeys
                                                    .onlineBooking_appointmentDetails
                                                    .tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium),
                                          ],
                                        ),
                                        SizedBox(height: AppSizeH.s10),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  '${LocaleKeys.onlineBooking_appointmentType.tr()}:',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                                              Text(appointment.type.name,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium)
                                            ]),
                                        SizedBox(height: AppSizeH.s10),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  '${LocaleKeys.onlineBooking_dealership.tr()}:',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                                              Text(appointment.dealership.name ?? '',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium)
                                            ]),
                                        SizedBox(height: AppSizeH.s10),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('${LocaleKeys.date.tr()}:',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                                              Text(
                                                  Helper.instance.dateHelper
                                                      .formatDate(appointment.date),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium)
                                            ]),
                                        SizedBox(height: AppSizeH.s10),
                                        //appointment type is other
                                        if(appointment.type.id == 2 )
                                          ...{
                                            Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('${LocaleKeys.onlineBooking_status.tr()}:',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                                                  Text(appointment.status.name,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineMedium)
                                                ]),
                                          },
                                        if (appointment.serviceOffer != null) ...{
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text(
                                                          '${LocaleKeys.home_service_offers.tr()}:',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                                                      Text(
                                                          appointment
                                                              .serviceOffer!.title,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .headlineMedium),
                                                    ]),
                                                SizedBox(height: AppSizeH.s10),
                                                Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text(
                                                          '${LocaleKeys.customer_car_odometer.tr()}:',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                                                      SizedBox(width: AppSizeW.s10),
                                                      Text(
                                                          appointment
                                                              .serviceOffer!.odometer
                                                              .toString(),
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .headlineMedium)
                                                    ]),
                                              ])
                                        },
                                      ],
                                    ),
                                  ),

                                ]),
                            if(appointment.rejectMessage?.isNotEmpty??false)
                                ...{
                                SizedBox(height: AppSizeH.s20),
                                CardContainer(
                                    width: MediaQuery.sizeOf(context).width,
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.cancel_outlined,color: ColorManager.error),
                                        SizedBox(width: AppSizeW.s2),
                                        Text(LocaleKeys.onlineBooking_rejectMessage.tr(),style:Theme.of(context).textTheme.headlineMedium),
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s10),
                                    Text(appointment.rejectMessage??'',style: Theme.of(context)
                                        .textTheme
                                        .labelLarge)
                                  ],

                                )),},
                            if (appointment.totals.total != 0) ...{
                              SizedBox(height: AppSizeH.s20),
                              OrderTotalsDetailsWidget(

                                orderDetailsTotal: OrderDetailsTotal(
                                    total: appointment.totals.total,
                                    subtotal: appointment.totals.subtotal,
                                    delivery: appointment.totals.delivery,
                                    discount: appointment.totals.discount,
                                    discountPercentage:
                                        appointment.totals.discountPercentage,
                                    tax: appointment.totals.tax),
                              ),
                            },
                            if (appointment.status.id == 5) //not paid id 5
                              ...{
                              SizedBox(height: AppSizeH.s20),
                              SizedBox(
                                  width: MediaQuery.sizeOf(context).width,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        context
                                                .read<AppointmentCheckoutBloc>()
                                                .appointmentTypeId =
                                            appointment.type.id;
                                        context.push(
                                            RoutesPaths.appointmentCheckout);
                                      },
                                      child: Text(
                                          LocaleKeys.onlineBooking_pay.tr()))),
                            },
                            if (appointment.status.id == 3) //shifted id 3
                              Column(children: [
                                SizedBox(height: AppSizeH.s20),
                                Text(
                                    '${LocaleKeys.onlineBooking_appointmentShifted.tr()} ${Helper.instance.dateHelper.formatDate(appointment.date)}',style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w300)),
                                SizedBox(height: AppSizeH.s20),
                                Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                          width:
                                          MediaQuery.sizeOf(context).width *
                                              0.3,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                context
                                                    .read<
                                                    AppointmentDetailsBloc>()
                                                    .add(AppointmentDetailsEvent
                                                    .approveUpdated(
                                                    ApproveUpdatedAppointmentParameters(
                                                        id: appointment
                                                            .id,
                                                        approve: true)));
                                              },
                                              child: Text(LocaleKeys
                                                  .onlineBooking_accept
                                                  .tr()))),
                                      SizedBox(
                                          width:
                                          MediaQuery.sizeOf(context).width *
                                              0.3,
                                          child: ElevatedButton(
                                              style: Theme.of(context)
                                                  .errorElevatedButtonTheme,
                                              onPressed: () {
                                                context
                                                    .read<
                                                    AppointmentDetailsBloc>()
                                                    .add(AppointmentDetailsEvent
                                                    .approveUpdated(
                                                    ApproveUpdatedAppointmentParameters(
                                                        id: appointment
                                                            .id,
                                                        approve: false)));
                                              },
                                              child: Text(LocaleKeys
                                                  .onlineBooking_reject
                                                  .tr()))),
                                    ]),]),
                            SizedBox(height: AppSizeW.s40)
                          ])),
                      orElse: () => const SizedBox.shrink());
                })));
  }
}
