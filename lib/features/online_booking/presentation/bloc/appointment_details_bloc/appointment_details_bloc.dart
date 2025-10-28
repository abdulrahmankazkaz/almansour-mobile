import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/online_booking/entities/parameters/approve_update_appointment_parameters.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../domain/use_cases/approve_updated_appointment.dart';
import '../../../entities/appointment/appointment.dart';

part 'appointment_details_bloc.freezed.dart';

part 'appointment_details_event.dart';

part 'appointment_details_state.dart';

class AppointmentDetailsBloc
    extends Bloc<AppointmentDetailsEvent, AppointmentDetailsState> {

  final ApproveUpdatedAppointment _approveUpdatedAppointment = getIt<ApproveUpdatedAppointment>();

  AppointmentDetailsBloc() : super(const AppointmentDetailsState.initial()) {
    on<AppointmentDetailsEvent>((event, emit) async {
      await event.map(
          started: (value) async {emit(const AppointmentDetailsState.initial());},
          selectType: (value) async => _onSelectAppointmentTypeEvent(emit, value),
          selectAppointment: (value) async => _onSelectAppointmentEvent(emit,value),
          approveUpdated: (value) async => await _onApproveUpdatedAppointmentEvent(emit,value) );

    });
  }

  void _onSelectAppointmentTypeEvent(
      Emitter<AppointmentDetailsState> emit, _SelectType event) {
    emit(AppointmentDetailsState.typeSelected(event.type));
  }
  void _onSelectAppointmentEvent(
      Emitter<AppointmentDetailsState> emit, _SelectAppointment event) {
    emit(AppointmentDetailsState.appointmentSelected(event.appointment));
  }

  Future<void> _onApproveUpdatedAppointmentEvent(Emitter<AppointmentDetailsState>emit,_ApproveUpdated event) async {
    try {
      emit(const AppointmentDetailsState.loading());
      var result = await _approveUpdatedAppointment.execute(event.parameters);
      await result.whenSuccess((success) async {
        emit(AppointmentDetailsState.appointmentSelected(success.data));
      });
      result.whenError((error) => emit(AppointmentDetailsState.failed(error.message)));
    } catch (e) {
      emit(AppointmentDetailsState.failed(e.toString()));
    }
  }
}
