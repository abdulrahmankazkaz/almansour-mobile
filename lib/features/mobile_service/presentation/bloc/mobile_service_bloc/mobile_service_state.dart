part of 'mobile_service_bloc.dart';

@freezed
class MobileServiceState with _$MobileServiceState {
  const factory MobileServiceState.initial() = _Initial;
  const factory MobileServiceState.loading() = _Loading;
  const factory MobileServiceState.fetchLoading() = _FetchLoading;
  const factory MobileServiceState.loaded(List<BookedMobileService> mobileServices) = _Loaded;
  const factory MobileServiceState.empty() = _Empty;
  const factory MobileServiceState.failed(String errorMessage) = _Failed;
  const factory MobileServiceState.createSuccessfully() = _CreateSuccessfully;
}
