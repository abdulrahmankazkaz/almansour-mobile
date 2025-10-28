part of 'available_quick_service_bloc.dart';

@freezed
class AvailableQuickServiceState with _$AvailableQuickServiceState {
  const factory AvailableQuickServiceState.initial() = _Initial;
  const factory AvailableQuickServiceState.loading() = _Loading;
  const factory AvailableQuickServiceState.loaded(List<String> availableDates,List<AvailableTime>? availableTimes) = _Loaded;
  const factory AvailableQuickServiceState.empty() = _Empty;
  const factory AvailableQuickServiceState.failed(String failedMessage) = _Failed;
}
