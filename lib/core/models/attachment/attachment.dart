import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@freezed
abstract class Attachment with _$Attachment {
  const Attachment._();

  const factory Attachment({
    @Default('') @JsonKey(fromJson: Attachment.idFromJson) String id,
    @Default('') String url,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  static List<Attachment> checkUploaded(List<Attachment> list) {
    return List.from(list)..removeWhere((element) => element.url.isEmpty);
  }

  static idFromJson(value) {
    return value.toString();
  }
}
