import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/cart/entities/enum/order_type_enum.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/appointment_details_bloc/appointment_details_bloc.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/empty_widgets/empty_lottie_widget.dart';
import '../../../../widgets/loading_widgets/small_circular_progress_indicator.dart';
import '../../../home/widgets/my_orders_page.dart';
import '../../../survey/entities/survey_type_parameters.dart';
import '../bloc/appointment_bloc/appointment_bloc.dart';
import '../bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppointmentsView();
  }
}

class AppointmentsView extends StatefulWidget {
  const AppointmentsView({super.key});

  @override
  State<AppointmentsView> createState() => _AppointmentsViewState();
}

class _AppointmentsViewState extends State<AppointmentsView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    context
        .read<AppointmentBloc>()
        .add(const AppointmentEvent.getAppointments(true));
    _scrollController = ScrollController()
      ..addListener(() {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        if (maxScroll - currentScroll < 15) {
          context
              .read<AppointmentBloc>()
              .add(const AppointmentEvent.getAppointments(false));
        }
      });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) => state.mapOrNull(
              failed: (value) => Helper.instance.messageHelper
                  .showErrorMessage(context:context,message: value.errorMessage),
            ),
        buildWhen: (previous, current) => current.maybeWhen(
            appointmentsLoaded: (_,__) => true,
            loading: () => true,
            orElse: () => false),
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Center(child: SmallCircularIndicator()),
              appointmentsLoaded: (appointments, hasReachMax) {
                if(appointments.isEmpty){
                  return  EmptyLottieWidget(
                    title: LocaleKeys.emptyTitle.tr(),
                    description: LocaleKeys.emptyDescription.tr(),
                    lottie: Assets.lottieEmpty,
                  );
                }
                else {
                  return RefreshIndicator(
                    backgroundColor: Theme.of(context).cardColor,
                    onRefresh: () async => context
                        .read<AppointmentBloc>()
                        .add(const AppointmentEvent.getAppointments(true)),
                    child: ListView.separated(
                        physics: const AlwaysScrollableScrollPhysics(),
                        controller: _scrollController,
                        padding: EdgeInsets.all(AppSizeW.s20),
                        itemCount: appointments.length+1,
                        itemBuilder: (context, index) {
                          if( index <
                              appointments.length )
                          {return OrderDetailsWidget(
                            orderType: OrderType.appointment,
                              status: appointments[index].status,
                              dealership: appointments[index].dealership.name??'',
                              price: appointments[index].totals.total.toInt() != 0? appointments[index].totals.total.toInt().toString():'',
                              orderId: appointments[index].id.toString(),
                              date: Helper.instance.dateHelper.formatDateJustDate(appointments[index].orderedDate)??'',
                              bookDate: Helper.instance.dateHelper.formatDate(appointments[index].date)??'',
                              name: appointments[index].type.name,
                              onRateTap: appointments[index].status.id == 7 &&
                                  !appointments[index].isRated
                                  ? () {
                                SurveyTypeParameters param =
                                SurveyTypeParameters(
                                    typeId: 2,
                                    modelId: appointments[index].id);
                                    context.push(RoutesPaths.survey,
                                  extra: param.toJson()).then((value) =>
                                  context
                                      .read<AppointmentBloc>()
                                      .add(const AppointmentEvent.getAppointments(true)));
                                  }
                                  : null,
                              onTap: () {
                                context.read<AppointmentDetailsBloc>().add(AppointmentDetailsEvent.selectAppointment(appointments[index]));
                                context.read<AppointmentCheckoutBloc>().appointmentId = appointments[index].id;
                                context.read<AppointmentCheckoutBloc>().serviceOfferId = appointments[index].serviceOffer?.id??-1;
                                context.read<AppointmentCheckoutBloc>().dealershipId = appointments[index].dealership.id;
                                context.read<AppointmentCheckoutBloc>().appointmentDate = Helper.instance.dateHelper.formatDateJustDate(appointments[index].date)??'';
                                context.read<AppointmentCheckoutBloc>().appointmentTime = Helper.instance.dateHelper.formatDateJustTime(appointments[index].date)??'';
                                context.push(RoutesPaths.appointmentDetailsPage);
                              });}
                            else if(index>=appointments.length && !hasReachMax) {
                            return Container(
                                margin: EdgeInsets.all(AppSizeH.s4),
                                width: AppSizeW.s32,
                                height: AppSizeW.s32,
                                child: const Center(
                                    child: CircularProgressIndicator()));
                          }
                            return null;
                        },
                        separatorBuilder: (context, index) =>  SizedBox(height: AppSizeH.s20)),
                  );
                }
              },
              failed: (failedMessage) => const SizedBox.shrink(),
              orElse: () => const SizedBox.shrink());
        });
  }
}
