import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/appointment_bloc/appointment_bloc.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/appointment_details_bloc/appointment_details_bloc.dart';

import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../bloc/available_appointment_bloc/available_appointment_bloc.dart';

class AppointmentTypeSection extends StatefulWidget {
  final ValueNotifier<DateTime?> selectedDateNotifier;

  const AppointmentTypeSection({
    required this.selectedDateNotifier,
    super.key,
  });

  @override
  State<AppointmentTypeSection> createState() => _AppointmentTypeSectionState();
}

class _AppointmentTypeSectionState extends State<AppointmentTypeSection> {
  BasicModel? selectedValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentBloc, AppointmentState>(
        buildWhen: (previous, current) => current.maybeWhen(
            loaded: (appointmentType) => true, orElse: () => false),
        builder: (context, state) {
          return BesideDropDown<BasicModel>(
            width: MediaQuery.sizeOf(context).width*0.9,
            label: LocaleKeys.onlineBooking_appointmentType.tr(),
            value: selectedValue,
            items: state.maybeWhen(
              loaded: (appointmentType) => appointmentType,
              orElse: () => []),
            stringConverter: (value) {
              return value.name;
            },
            onChanged: (value) async {
              widget.selectedDateNotifier.value = null;
                    context.read<AppointmentBloc>().add(const AppointmentEvent.started());
                    context
                        .read<AppointmentDetailsBloc>()
                        .add(AppointmentDetailsEvent.selectType(value!));
                    context.read<AppointmentBloc>().setSelectedTypeId(value.id);
                    context
                        .read<AvailableAppointmentBloc>()
                        .setSelectedTypeId(value.id);
                    context
                        .read<AvailableAppointmentBloc>()
                        .add(const AvailableAppointmentEvent.get());
                    setState(() {
                      selectedValue = value;
                    });
            },
          );
        });
  }
}
