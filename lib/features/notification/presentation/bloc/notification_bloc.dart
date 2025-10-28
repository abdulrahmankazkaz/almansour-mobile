import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_input/pagination_input/pagination_input.dart';

import '../../../../app/dependency_injection.dart';
import '../../../cart/presentation/bloc/order_bloc/order_bloc.dart';
import '../../domain/use_cases/get_notifications.dart';
import '../../entities/notification/notification.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotifications _getNotifications = getIt<GetNotifications>();
  final List<NotificationEntity> _notifications = [];
  bool _hasReachMax = false;
  int _currPage = 1;
  NotificationBloc() : super(const NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
     event.mapOrNull(
         started: (value) {});
    });
    on<_Get>(
            (event, emit) => event.mapOrNull(
          get: (value) async => await _onGetNotificationsEvent(emit, value)),
        transformer: throttleDroppable(throttleDuration));
  }

  Future<void> _onGetNotificationsEvent(Emitter<NotificationState> emit,_Get event) async {
    if (event.firstFetch) {
      _currPage = 1;
      _hasReachMax = false;
      _notifications.clear();
      emit(const NotificationState.loading());
    }
    if (_hasReachMax) return;
    try {
      var result = await _getNotifications.execute(PaginationParams(page: _currPage));
      await result.whenSuccess((success) async {
        if (success.pagination?.currentPage == success.pagination?.lastPage) {
          _hasReachMax = true;
        }
        _notifications.addAll(success.data);
        emit(NotificationState.loaded(List.from(_notifications), _hasReachMax));
      });
      result.whenError((error) => emit(NotificationState.failed(error.message)));
    }
    catch (e) {
      emit(NotificationState.failed(e.toString()));
    }
    _currPage++;
  }

}
