part of 'mobile_service_bloc.dart';


@freezed
class MobileServiceEvent with _$MobileServiceEvent {
  const factory MobileServiceEvent.started() = _Started;
  const factory MobileServiceEvent.createMobileService(int streetId) = _CreateMobileService;
  const factory MobileServiceEvent.get() = _Get;
}
