part of 'available_quick_service_bloc.dart';

@freezed
class AvailableQuickServiceEvent with _$AvailableQuickServiceEvent {
  const factory AvailableQuickServiceEvent.started() = _Started;
  const factory AvailableQuickServiceEvent.get() = _Get;
  const factory AvailableQuickServiceEvent.determineAvailableTime(String dayDate) = _DetermineAvailableTime;
}
