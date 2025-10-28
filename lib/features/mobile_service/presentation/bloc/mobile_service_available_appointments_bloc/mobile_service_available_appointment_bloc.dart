import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../online_booking/entities/available_time/available_time.dart';
import '../../../domain/use_cases/get_mobile_service_available_appointments.dart';

part 'mobile_service_available_appointment_bloc.freezed.dart';

part 'mobile_service_available_appointment_event.dart';

part 'mobile_service_available_appointment_state.dart';

class MobileServiceAvailableAppointmentBloc extends Bloc<
    MobileServiceAvailableAppointmentEvent,
    MobileServiceAvailableAppointmentState> {
  final GetMobileServiceAvailableAppointments _getMobileServiceAvailableAppointments = getIt<GetMobileServiceAvailableAppointments>();
  List<String> availableDates = [];
  Map<String, List<AvailableTime>> availableTimes = {};

  MobileServiceAvailableAppointmentBloc()
      : super(const MobileServiceAvailableAppointmentState.initial()) {
    on<MobileServiceAvailableAppointmentEvent>((event, emit) async {
      await event.map(
        started: (value) {},
        get: (value) async => await _onGetEvent(emit, value),
        determineAvailableTime: (value) async => await _onDetermineAvailableTimeEvent(emit, value),
      );
    });
  }

  Future<void> _onGetEvent(
      Emitter<MobileServiceAvailableAppointmentState> emit, _Get event) async {
    try {
      emit(const MobileServiceAvailableAppointmentState.loading());
      var result = await _getMobileServiceAvailableAppointments.execute(event.selectedStreetId);
      await result.whenSuccess((success) async {
        availableDates.clear();
        availableTimes.clear();

        for (var appointment in success) {
          var date = DateFormat('yyyy-MM-dd','en').format(appointment.date);
          if (!availableDates.contains(date)) {
            availableDates.add(date);
            availableTimes[date] = [];
          }
        }

        for (var date in availableDates) {
          var times = success
              .where((appointment) =>
          DateFormat('yyyy-MM-dd','en').format(appointment.date) == date)
              .map((appointment) {
            return AvailableTime(
                time: DateFormat('HH:mm','en').format(appointment.date),
                isAvailable: appointment.isAvailable);
          }).toList();
          availableTimes[date] = times;
        }
        emit(MobileServiceAvailableAppointmentState.loaded(availableDates, null));
      });
      result.whenError(
              (error) => emit(MobileServiceAvailableAppointmentState.failed(error.message)));
    } catch (e) {
      emit(MobileServiceAvailableAppointmentState.failed(e.toString()));
    }
  }

  Future<void> _onDetermineAvailableTimeEvent(
      Emitter<MobileServiceAvailableAppointmentState> emit,
      _DetermineAvailableTime event) async {
    emit(MobileServiceAvailableAppointmentState.loaded(availableDates, availableTimes[event.dayDate]));
  }

}
