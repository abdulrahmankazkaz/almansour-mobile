import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  const factory Media({
    @JsonKey(name: 'primary') @Default([]) List<String> primaryImage,
    @JsonKey(name: 'video') @Default([]) List<String> videos,
    @JsonKey(name: 'images') @Default([]) List<String> images,
    @JsonKey(name: 'banner')  String? bannerImage,
  }) = _Media;

  factory Media.fromJson(Map<String, Object?> json) => _$MediaFromJson(json);
}
