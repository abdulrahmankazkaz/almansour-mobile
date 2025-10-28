import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../car/entities/car/car.dart';
import '../../../car/entities/image_with_color/image_with_color.dart';


part 'installment.freezed.dart';
part 'installment.g.dart';

@freezed
class Installment with _$Installment {
  const factory Installment({
    required Car car,
    required List<ImageWithColor> secondaryImage,
    required String carName,
    required String brandImage,
    required double price,
    double? downPayment,
    double? restPayPerMonth

  }) = _Installment;

  factory Installment.fromJson(Map<String, Object?> json) =>
      _$InstallmentFromJson(json);


}