import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../features/mobile_service/presentation/bloc/mobile_service_enum_bloc/mobile_service_enum_bloc.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/date_picker/custom_time_picker.dart';
import '../../../../widgets/date_picker/day_date_picker.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../bloc/mobile_service_available_appointments_bloc/mobile_service_available_appointment_bloc.dart';
import '../bloc/mobile_service_bloc/mobile_service_bloc.dart';
import '../cubit/mobile_service_details_form_cubit/mobile_service_details_form_cubit.dart';

class MobileServiceAppointmentTimePage extends StatelessWidget {
  const MobileServiceAppointmentTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => MobileServiceAvailableAppointmentBloc()),
      BlocProvider(create: (context) => MobileServiceEnumBloc()),
      BlocProvider(create: (context) => MobileServiceDetailsFormCubit()),
    ], child: const MobileServiceAppointmentTimeView());
  }
}

class MobileServiceAppointmentTimeView extends StatefulWidget {
  const MobileServiceAppointmentTimeView({super.key});

  @override
  State<MobileServiceAppointmentTimeView> createState() =>
      _MobileServiceAppointmentTimeViewState();
}

class _MobileServiceAppointmentTimeViewState
    extends State<MobileServiceAppointmentTimeView> {
  late int selectedStreetId;
  BasicModel? _selectedType;

  final selectedDateNotifier = ValueNotifier<DateTime?>(null);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      selectedStreetId = GoRouterState.of(context).extra as int;
      context
          .read<MobileServiceAvailableAppointmentBloc>()
          .add(MobileServiceAvailableAppointmentEvent.get(selectedStreetId));
      context.read<MobileServiceBloc>().add(const MobileServiceEvent.started());
      context
          .read<MobileServiceEnumBloc>()
          .add(const MobileServiceEnumEvent.getTypes());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text(LocaleKeys.mobileService_mobileService.tr())),
      body: BlocListener<MobileServiceBloc, MobileServiceState>(
        listener: (context, state) => state.maybeWhen(
            failed: (errorMessage) {
              LoadingDialog.hide(context);
              Helper.instance.messageHelper
                  .showErrorMessage(context: context, message: errorMessage);
              return;
            },
            loading: () => LoadingDialog.show(context),
            createSuccessfully: () {
              LoadingDialog.hide(context);
              context.go(RoutesPaths.orderSuccess,extra: 1);
              return;
            },
            orElse: () {
              return;
            }),
        child: ScreenContainer(
            margin: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.12,
                right: AppSizeW.s20,
                left: AppSizeW.s20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(LocaleKeys.mobileService_chooseAvailableAppointment.tr()),
              SizedBox(height: AppSizeH.s20),
              CustomGlobalDayPicker<MobileServiceAvailableAppointmentBloc,
                  MobileServiceAvailableAppointmentState>(
                label: LocaleKeys.onlineBooking_date.tr(),
                bloc: context.read<MobileServiceAvailableAppointmentBloc>(),
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
                  context
                      .read<MobileServiceDetailsFormCubit>()
                      .selectDate(date);
                  context.read<MobileServiceBloc>().selectedDate =
                      Helper.instance.dateHelper.formatDateJustDate(date) ?? '';
                  context.read<MobileServiceAvailableAppointmentBloc>().add(
                      MobileServiceAvailableAppointmentEvent
                          .determineAvailableTime(Helper.instance.dateHelper
                                  .formatDateJustDate(date) ??
                              ''));
                },
                selectedDateNotifier: selectedDateNotifier,
              ),
              SizedBox(height: AppSizeH.s20),
              CustomTimePicker<MobileServiceAvailableAppointmentState>(
                label: LocaleKeys.onlineBooking_time.tr(),
                bloc: context.read<MobileServiceAvailableAppointmentBloc>(),
                extractTimes: (state) => state.maybeWhen(
                    loaded: (availableDates, availableTimes) {
                      if (availableTimes != null) {
                        return availableTimes.map((e) => e.time).toList();
                      } else {
                        return [];
                      }
                    },
                    orElse: () => []),
                extractDisabledIndices: (state) => state.maybeWhen(
                    loaded: (availableDates, availableTimes) {
                      if (availableTimes != null) {
                        return availableTimes
                            .asMap()
                            .entries
                            .where((e) => !e.value.isAvailable)
                            .map((e) => e.key)
                            .toList();
                      } else {
                        return [];
                      }
                    },
                    orElse: () => []),
                onTimeSelected: (time) {
                  context
                      .read<MobileServiceDetailsFormCubit>()
                      .selectTime(time);
                  context.read<MobileServiceBloc>().selectedTime = time;
                },
              ),
              SizedBox(height: AppSizeH.s30),
              BlocBuilder<MobileServiceEnumBloc, MobileServiceEnumState>(
                  builder: (context, state) {
                return BesideDropDown<BasicModel>(
                  label: LocaleKeys.mobileService_type.tr(),
                  value: _selectedType,
                  loading: state.maybeWhen(
                      orElse: () => false, typesLoading: () => true),
                  items: state.maybeWhen(
                      typesLoaded: (types) => types, orElse: () => []),
                  stringConverter: (value) {
                    return value.name;
                  },
                  onChanged: (value) async {
                    context
                        .read<MobileServiceDetailsFormCubit>()
                        .selectService(value!.id);
                    _selectedType = value;
                    context.read<MobileServiceBloc>().typeId =
                        _selectedType?.id ?? -1;
                  },
                );
              }),
              // const Spacer(flex: 4),

              // const Spacer()
            ])),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20, vertical: AppSizeH.s30),
          width: MediaQuery.sizeOf(context).width,
          child: BlocBuilder<MobileServiceDetailsFormCubit,
              MobileServiceDetailsFormState>(builder: (context, state) {
            return ElevatedButton(
              onPressed: state.isComplete
                  ? () {
                      context.read<MobileServiceBloc>().add(
                          MobileServiceEvent.createMobileService(
                              selectedStreetId));
                    }
                  : null,
              child: Text(LocaleKeys.onlineBooking_bookNow.tr()),
            );
          })),
    );
  }
}
