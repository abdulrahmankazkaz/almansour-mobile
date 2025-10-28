import 'package:freezed_annotation/freezed_annotation.dart';

import '../color/color_entity.dart';

part 'image_with_color.freezed.dart';
part 'image_with_color.g.dart';

@freezed
class ImageWithColor with _$ImageWithColor {
  const factory ImageWithColor({
    required int id,
    @Default('') String image,
    @Default(ColorEntity(id: -1)) ColorEntity color,
  }) = _ImageWithColor;

  factory ImageWithColor.fromJson(Map<String, Object?> json) =>
      _$ImageWithColorFromJson(json);
}
