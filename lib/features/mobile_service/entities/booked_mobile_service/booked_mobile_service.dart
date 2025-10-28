import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';


part 'booked_mobile_service.freezed.dart';
part 'booked_mobile_service.g.dart';

@freezed
class BookedMobileService with _$BookedMobileService{
  const factory BookedMobileService({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'appointment_time')  DateTime? appointmentDate,
    @JsonKey(name: 'created_at')  DateTime? bookDate,
    @JsonKey(name: 'street') required BasicModel street,
    @JsonKey(name: 'area') required BasicModel area,
    @JsonKey(name: 'city') required BasicModel city,
    @JsonKey(name: 'status') required BasicModel status,
    @JsonKey(name: 'type') required BasicModel type,
    @JsonKey(name: 'is_rated') required bool isRated,
  }) = _BookedMobileService;

  factory BookedMobileService.fromJson(Map<String, dynamic> json) =>
      _$BookedMobileServiceFromJson(json);

}