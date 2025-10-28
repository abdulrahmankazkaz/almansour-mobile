import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/notification/entities/notification_body/notification_body.dart';


part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'payload') required NotificationBody body,
    @JsonKey(name: 'created_at') required DateTime date,
    @JsonKey(name: 'read_at')  DateTime? readAt,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, Object?> json) => _$NotificationEntityFromJson (json);
}
