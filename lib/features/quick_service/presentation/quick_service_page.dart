import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/quick_service/domain/entities/quick_service_parameters.dart';

import '../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../core/router/routes_manager.dart';
import '../../../core/utils/helpers/helper.dart';
import '../../../core/utils/resources/values_manager.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../widgets/date_picker/custom_time_picker.dart';
import '../../../widgets/date_picker/day_date_picker.dart';
import '../../../widgets/dialog/warning_dialog.dart';
import '../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../widgets/loading_widgets/willpop_scope_loading.dart';
import 'bloc/available_quick_service_bloc/available_quick_service_bloc.dart';
import 'bloc/quick_service_bloc/quick_service_bloc.dart';
import 'bloc/quick_service_enum_bloc/quick_service_enum_bloc.dart';
import 'cubit/quick_service_form_cubit.dart';

class QuickServiceView extends StatelessWidget {
  const QuickServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => QuickServiceBloc()),
        BlocProvider(create: (_) => AvailableQuickServiceBloc()),
        BlocProvider(create: (_) => QuickServiceEnumBloc()),
        BlocProvider(create: (_) => QuickServiceFormCubit()),
      ],
      child: QuickServicePage(),
    );
  }
}

class QuickServicePage extends StatefulWidget {
  const QuickServicePage({super.key});

  @override
  State<QuickServicePage> createState() => _QuickServicePageState();
}

class _QuickServicePageState extends State<QuickServicePage> {
  ValueNotifier<bool> isTypeEnabled = ValueNotifier(false);

  @override
  void initState() {
    context.read<QuickServiceEnumBloc>().add(QuickServiceEnumEvent.getCities());
    context
        .read<QuickServiceEnumBloc>()
        .add(QuickServiceEnumEvent.getServices());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.quickService_quickService.tr())),
      body: MultiBlocListener(
        listeners: [
          BlocListener<QuickServiceEnumBloc, QuickServiceEnumState>(
              listener: (context, state) {
            state.maybeWhen(
                citiesLoaded: (cities) {
                  if (cities.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) => WarningDialog(
                              message:
                                  LocaleKeys.mobileService_serviceNotAvailable,
                            ));
                  }
                },
                orElse: () {});
          }),
          BlocListener<QuickServiceBloc, QuickServiceState>(
            listener: (context, state) => state.maybeWhen(
                failed: (errorMessage) {
                  LoadingDialog.hide(context);
                  Helper.instance.messageHelper.showErrorMessage(
                      context: context, message: errorMessage);
                  return;
                },
                loading: () => LoadingDialog.show(context),
                createSuccessfully: () {
                  LoadingDialog.hide(context);
                  context.go(RoutesPaths.orderSuccess, extra: 2);
                  return;
                },
                orElse: () {
                  return;
                }),
          ),
        ],
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizeW.s20, vertical: AppSizeH.s30),
            child: Column(
              children: [
                BlocBuilder<QuickServiceEnumBloc, QuickServiceEnumState>(
                    buildWhen: (previous, current) {
                  return current.maybeWhen(
                      citiesLoaded: (_) => true,
                      citiesLoading: () => true,
                      orElse: () => false);
                }, builder: (context, state) {
                  return BesideDropDown<BasicModel>(
                      label: LocaleKeys.profile_city.tr(),
                      loading: state.maybeWhen(
                          citiesLoading: () => true, orElse: () => false),
                      labelStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                      items: state.maybeWhen(
                        citiesLoaded: (cities) => cities,
                        orElse: () => [],
                      ),
                      onChanged: (city) {
                        context.read<QuickServiceEnumBloc>().add(
                            QuickServiceEnumEvent.getDealerships(city!.id));
                        context
                            .read<QuickServiceFormCubit>()
                            .selectCity(city.id);
                      },
                      stringConverter: (model) => model.name);
                }),
                SizedBox(height: AppSizeH.s30),
                BlocBuilder<QuickServiceEnumBloc, QuickServiceEnumState>(
                    buildWhen: (previous, current) => current.maybeWhen(
                        dealershipsLoaded: (_) => true,
                        dealershipsLoading: () => true,
                        orElse: () => false),
                    builder: (context, state) {
                      return BesideDropDown<BasicModel>(
                          label: LocaleKeys.quickService_branch.tr(),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                          loading: state.maybeWhen(
                              dealershipsLoading: () => true,
                              orElse: () => false),
                          onChanged: (dealership) {
                            isTypeEnabled.value = true;
                            context
                                .read<AvailableQuickServiceBloc>()
                                .selectedDealership = dealership!.id;
                            context
                                .read<AvailableQuickServiceBloc>()
                                .add(AvailableQuickServiceEvent.get());
                            context
                                .read<QuickServiceFormCubit>()
                                .selectBranch(dealership.id);
                          },
                          items: state.maybeWhen(
                              dealershipsLoaded: (dealerships) => dealerships,
                              orElse: () => []),
                          stringConverter: (model) => model.name);
                    }),
                SizedBox(height: AppSizeH.s30),
                AnimatedBuilder(
                    animation: isTypeEnabled,
                    builder: (context, _) {
                      return BlocBuilder<QuickServiceEnumBloc,
                              QuickServiceEnumState>(
                          buildWhen: (previous, current) => current.maybeWhen(
                              servicesLoaded: (services) => true,
                              servicesLoading: () => true,
                              orElse: () => false),
                          builder: (context, state) {
                            return BesideDropDown<BasicModel>(
                                label: LocaleKeys.mobileService_type.tr(),
                                readOnly: !isTypeEnabled.value,
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                                loading: state.maybeWhen(
                                    servicesLoading: () => true,
                                    orElse: () => false),
                                items: state.maybeWhen(
                                  servicesLoaded: (services) => services,
                                  orElse: () => [],
                                ),
                                onChanged: (service) {
                                  context
                                      .read<QuickServiceFormCubit>()
                                      .selectService(service!.id);
                                },
                                stringConverter: (model) => model.name);
                          });
                    }),
                SizedBox(height: AppSizeH.s30),
                CustomGlobalDayPicker<AvailableQuickServiceBloc,
                    AvailableQuickServiceState>(
                  bloc: context.read<AvailableQuickServiceBloc>(),
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
                  label: LocaleKeys.date.tr(),
                  selectedDateNotifier: ValueNotifier(null),
                  onDateChange: (selectedDate) {
                    context.read<AvailableQuickServiceBloc>().add(
                        AvailableQuickServiceEvent.determineAvailableTime(Helper
                                .instance.dateHelper
                                .formatDateJustDate(selectedDate) ??
                            ''));
                    context
                        .read<QuickServiceFormCubit>()
                        .selectDate(selectedDate);
                  },
                ),
                SizedBox(height: AppSizeH.s30),
                CustomTimePicker<AvailableQuickServiceState>(
                  label: LocaleKeys.onlineBooking_time.tr(),
                  bloc: context.read<AvailableQuickServiceBloc>(),
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
                    context.read<QuickServiceFormCubit>().selectTime(time);
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(
                    //     content: Text('You selected $time'),
                    //     duration: Duration(milliseconds: 300),
                    //   ),
                    // );
                  },
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizeW.s20),
        child: BlocBuilder<QuickServiceFormCubit, QuickServiceFormState>(
            builder: (context, state) {
          return ElevatedButton(
              onPressed: state.isComplete
                  ? () {
                      context.read<QuickServiceBloc>().add(
                              QuickServiceEvent.createQuickService(
                                  (QuickServiceParameters(
                            typeId: context
                                    .read<QuickServiceFormCubit>()
                                    .state
                                    .selectedServiceId ??
                                -1,
                            appointmentTime:
                                '${Helper.instance.dateHelper.formatDateJustDate(context.read<QuickServiceFormCubit>().state.selectedDate)} ${context.read<QuickServiceFormCubit>().state.selectedTime ?? ''}',
                            dealershipId: context
                                    .read<QuickServiceFormCubit>()
                                    .state
                                    .selectedBranchId ??
                                -1,
                          ))));
                    }
                  : null,
              child: Text(LocaleKeys.send.tr()));
        }),
      ),
    );
  }
}
