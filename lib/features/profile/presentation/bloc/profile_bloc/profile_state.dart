part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.updateSuccessfully(User profileModel) =_UpdateSuccessfully;
  const factory ProfileState.getSuccess(User profileModel) = _GetSuccess;
  const factory ProfileState.failed(String errorMessage) = _Failed;
  const factory ProfileState.accountDeactivated() = _AccountDeactivated;
  const factory ProfileState.accountDeleted() = _AccountDeleted;
}
