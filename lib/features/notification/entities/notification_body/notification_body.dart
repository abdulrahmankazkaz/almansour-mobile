import 'package:freezed_annotation/freezed_annotation.dart';


part 'notification_body.freezed.dart';
part 'notification_body.g.dart';

@freezed
class NotificationBody with _$NotificationBody {
  const factory NotificationBody({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String message,
    @JsonKey(name: 'image')  String? imageUrl,
    @JsonKey(name: 'type_id') int? typeId,
    @JsonKey(name: 'model_id') required int? modelId,

  }) = _NotificationBody;

  factory NotificationBody.fromJson(Map<String, Object?> json) => _$NotificationBodyFromJson (json);
}
