part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.deactivateAccount() = _DeactivateAccount;
  const factory ProfileEvent.deleteAccount() = _DeleteAccount;
  const factory ProfileEvent.updateProfile(ProfileParameters profileParameters) = _UpdateProfile;
}
