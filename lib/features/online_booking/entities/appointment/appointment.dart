import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../cart/entities/order_details/order_details_total.dart';
import '../../../service_offer/entities/service_offer/service_offer.dart';
import '../dealership/dealership.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const Appointment._();
  const factory Appointment({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'appointment_time') required DateTime date,
    @JsonKey(name: 'created_at') required DateTime orderedDate,
    @JsonKey(name: 'updated_at') required DateTime? updatedDate,
    @JsonKey(name: 'type') required BasicModel type,
    @JsonKey(name: 'status') required BasicModel status,
    @JsonKey(name: 'is_rated') required bool isRated,
    @JsonKey(name: 'payment_method')  BasicModel? paymentMethod,
    @JsonKey(name: 'dealership') @Default(Dealership()) Dealership dealership,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'reject_message') @Default('') String? rejectMessage,
    @JsonKey(name: 'totals') required  OrderDetailsTotal totals,
    @JsonKey(name: 'service_offer')  ServiceOffer? serviceOffer,
  }) = _Appointment;
  factory Appointment.fromJson(Map<String, Object?> json) => _$AppointmentFromJson(json);
}
