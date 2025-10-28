part of 'profile_enum_bloc.dart';

@freezed
class ProfileEnumEvent with _$ProfileEnumEvent {
  const factory ProfileEnumEvent.started() = _Started;
  const factory ProfileEnumEvent.getGenders() = _GetGender;
  const factory ProfileEnumEvent.getCities() = _GetCities;
}
