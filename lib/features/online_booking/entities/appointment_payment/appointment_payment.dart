import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../cart/entities/order_details/order_details_total.dart';

part 'appointment_payment.freezed.dart';
part 'appointment_payment.g.dart';

@freezed
class AppointmentPayment with _$AppointmentPayment {
  const AppointmentPayment._();
  const factory AppointmentPayment({
    @JsonKey(name: 'url')  String? url,
    @JsonKey(name: 'totals') required OrderDetailsTotal paymentTotals
  }) = _AppointmentPayment;
  factory AppointmentPayment.fromJson(Map<String, Object?> json) => _$AppointmentPaymentFromJson(json);
}
