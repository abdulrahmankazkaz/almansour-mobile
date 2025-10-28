part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.loaded(List<NotificationEntity> notifications,bool hasReachMax) = _Loaded;
  const factory NotificationState.failed(String failedMessage) = _Failed;
}
