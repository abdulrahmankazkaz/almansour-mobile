import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_appointment.freezed.dart';
part 'available_appointment.g.dart';

@freezed
class AvailableAppointment with _$AvailableAppointment {
  const AvailableAppointment._();
  const factory AvailableAppointment({
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'is_available') required bool isAvailable
  }) = _AvailableAppointment;
  factory AvailableAppointment.fromJson(Map<String, Object?> json) => _$AvailableAppointmentFromJson(json);
}
