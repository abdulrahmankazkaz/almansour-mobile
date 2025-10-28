part of 'profile_enum_bloc.dart';

@freezed
class ProfileEnumState with _$ProfileEnumState {
  const factory ProfileEnumState.initial() = _Initial;
  const factory ProfileEnumState.loading() = _Loading;
  const factory ProfileEnumState.genderLoaded(List<BasicModel> genders) = _GenderLoaded;
  const factory ProfileEnumState.cityLoaded(List<BasicModel> cities) = _CityLoaded;
  const factory ProfileEnumState.failed(String errorMessage) = _Failed;
}
