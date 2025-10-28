import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';

part 'car_checked.freezed.dart';
part 'car_checked.g.dart';

@freezed
class CarChecked with _$CarChecked{
  const factory CarChecked({
    @JsonKey(name: 'status') required bool status

  }) = _CarChecked;

  factory CarChecked.fromJson(Map<String, Object?> json) =>
      _$CarCheckedFromJson(json);
}
