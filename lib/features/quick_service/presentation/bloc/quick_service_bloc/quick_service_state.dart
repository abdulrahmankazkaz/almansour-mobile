part of 'quick_service_bloc.dart';

@freezed
class QuickServiceState with _$QuickServiceState {
  const factory QuickServiceState.initial() = _Initial;
  const factory QuickServiceState.loading() = _Loading;
  const factory QuickServiceState.fetchLoading() = _FetchLoading;
  const factory QuickServiceState.empty() = _Empty;
  const factory QuickServiceState.loaded(List<QuickServiceModel> quickServices) = _Loaded;
  const factory QuickServiceState.createSuccessfully() = _CreateSuccessfully;
  const factory QuickServiceState.failed(String failedMessage) = _Failed;
}
