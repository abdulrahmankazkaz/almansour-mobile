import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../online_booking/entities/available_time/available_time.dart';
import '../../../domain/usecases/get_quick_service_available.dart';

part 'available_quick_service_bloc.freezed.dart';
part 'available_quick_service_event.dart';
part 'available_quick_service_state.dart';

class AvailableQuickServiceBloc
    extends Bloc<AvailableQuickServiceEvent, AvailableQuickServiceState> {
  final GetQuickServiceAvailable _getAvailableAppointments = getIt<GetQuickServiceAvailable>();

  int _selectedDealershipId = -1;
  final List<String> _availableDates = [];
  final Map<String, List<AvailableTime>> _availableTimes = {};

  AvailableQuickServiceBloc()
      : super(const AvailableQuickServiceState.initial()) {
    on<AvailableQuickServiceEvent>((event, emit) async {
      await event.map(
          started: (value) {
            emit(const AvailableQuickServiceState.initial());
          },
          determineAvailableTime: (value) async => await _onDetermineAvailableTime(emit, value),
          get: (value) async => await _onGetAvailableAppointments(emit, value));
    });
  }

  Future<void> _onGetAvailableAppointments(
      Emitter<AvailableQuickServiceState> emit, _Get event) async {

    try {
      emit(const AvailableQuickServiceState.loading());
      var result = await _getAvailableAppointments.execute(
          _selectedDealershipId);
      await result.whenSuccess((success) async {
        _availableDates.clear();
        _availableTimes.clear();

        for (var appointment in success.data) {
          var date = DateFormat('yyyy-MM-dd', 'en').format(appointment.date);
          if (!_availableDates.contains(date)) {
            _availableDates.add(date);
            _availableTimes[date] = [];
          }
        }

        for (var date in _availableDates) {
          var times = success.data.where((appointment) =>
          DateFormat('yyyy-MM-dd', 'en').format(appointment.date) ==
              date)
              .map((appointment) {
            return AvailableTime(
                time: DateFormat('HH:mm', 'en').format(appointment.date),
                isAvailable: appointment.isAvailable);
          }).toList();
          _availableTimes[date] = times;
        }
        emit(AvailableQuickServiceState.loaded(_availableDates, null));
      });
      result.whenError(
              (error) => emit(AvailableQuickServiceState.failed(error.message)));
    } catch (e) {
      emit(AvailableQuickServiceState.failed(e.toString()));
    }
  }

  Future<void> _onDetermineAvailableTime(
      Emitter<AvailableQuickServiceState> emit,
      _DetermineAvailableTime event) async {
    emit(AvailableQuickServiceState.loaded(
        _availableDates, _availableTimes[event.dayDate]));
  }

  set selectedDealership(int id) => _selectedDealershipId = id;
}
