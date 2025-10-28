import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/features/online_booking/domain/use_cases/get_available_appointment.dart';

import '../../../entities/available_time/available_time.dart';
import '../../../entities/parameters/available_appointment_parameters.dart';

part 'available_appointment_bloc.freezed.dart';
part 'available_appointment_event.dart';
part 'available_appointment_state.dart';

class AvailableAppointmentBloc
    extends Bloc<AvailableAppointmentEvent, AvailableAppointmentState> {
  final GetAvailableAppointments _getAvailableAppointments = getIt<GetAvailableAppointments>();
  int _selectedDealershipId = -1;
  int _selectedTypeId = -1;
  List<String> availableDates = [];
  Map<String, List<AvailableTime>> availableTimes = {};

  AvailableAppointmentBloc()
      : super(const AvailableAppointmentState.initial()) {
    on<AvailableAppointmentEvent>((event, emit) async {
      await event.map(
          started: (value) {
            emit(const AvailableAppointmentState.initial());
          },
          determineAvailableTime: (value) async =>
              await _onDetermineAvailableTime(emit, value),
          get: (value) async => await _onGetAvailableAppointments(emit, value));
    });
  }

  Future<void> _onGetAvailableAppointments(
      Emitter<AvailableAppointmentState> emit, _Get event) async {

    try {
      emit(const AvailableAppointmentState.loading());
      var result = await _getAvailableAppointments.execute(
          AvailableAppointmentParameters(
              dealershipId: _selectedDealershipId, typeId: _selectedTypeId));
      await result.whenSuccess((success) async {
        availableDates.clear();
        availableTimes.clear();

        for (var appointment in success) {
          var date = DateFormat('yyyy-MM-dd', 'en').format(appointment.date);
          if (!availableDates.contains(date)) {
            availableDates.add(date);
            availableTimes[date] = [];
          }
        }

        for (var date in availableDates) {
          var times = success
              .where((appointment) =>
                  DateFormat('yyyy-MM-dd', 'en').format(appointment.date) ==
                  date)
              .map((appointment) {
            return AvailableTime(
                time: DateFormat('HH:mm', 'en').format(appointment.date),
                isAvailable: appointment.isAvailable);
          }).toList();
          availableTimes[date] = times;
        }
        emit(AvailableAppointmentState.loaded(availableDates, null));
      });
      result.whenError(
          (error) => emit(AvailableAppointmentState.failed(error.message)));
    } catch (e) {
      emit(AvailableAppointmentState.failed(e.toString()));
    }
  }

  Future<void> _onDetermineAvailableTime(
      Emitter<AvailableAppointmentState> emit,
      _DetermineAvailableTime event) async {
    emit(AvailableAppointmentState.loaded(
        availableDates, availableTimes[event.dayDate]));
  }

  void setSelectedDealershipId(int id) {
    _selectedDealershipId = id;
  }

  void setSelectedTypeId(int id) {
    _selectedTypeId = id;
  }

  int get selectedTypeId => _selectedTypeId;
}
