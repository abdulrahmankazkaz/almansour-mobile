part of 'quick_service_bloc.dart';

@freezed
class QuickServiceEvent with _$QuickServiceEvent {
  const factory QuickServiceEvent.started() = _Started;
  const factory QuickServiceEvent.get() = _Get;
  const factory QuickServiceEvent.createQuickService(QuickServiceParameters params) = _CreateQuickService;

}
