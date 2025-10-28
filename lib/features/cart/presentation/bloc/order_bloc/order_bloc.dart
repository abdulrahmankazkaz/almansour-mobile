import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';
import 'package:mac_mobile/features/cart/domain/use_cases/cancel_order.dart';
import 'package:mac_mobile/features/cart/domain/use_cases/pay_order.dart';
import 'package:mac_mobile/features/cart/entities/pay_order_parameters/pay_order_parameters.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../domain/use_cases/get_order_details.dart';
import '../../../domain/use_cases/get_orders.dart';
import '../../../domain/use_cases/send_order.dart';
import '../../../entities/cart_item/cart_item.dart';
import '../../../entities/order/order_entity.dart';
import '../../../entities/order_details/order_details.dart';
import '../../../entities/order_details_parameters/order_details_parameters.dart';
import '../../../entities/order_item/order_item.dart';
import '../../../entities/order_parameters/order_parameters.dart';
import '../../../entities/order_success/order_success.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

const throttleDuration = Duration(milliseconds: 500);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final GetOrderDetails _getOrderDetails = getIt<GetOrderDetails>();
  final SendOrder _sendOrder = getIt<SendOrder>();
  final GetOrders _getOrders = getIt<GetOrders>();
  final CancelOrder _cancelOrder = getIt<CancelOrder>();
  final PayOrder _payOrder = getIt<PayOrder>();
  int _orderTypeId = 2;
  int _orderId = -1;
  int _paymentMethodId = -1;
  int _dealershipId = -1;
  int _currentOrderTypeId = 2;
  int _currentPaymentMethodId = 1;
  int _currentDealershipId = 1;
  List<OrderItem> _orderItems = [];
  List<OrderItem> _currentOrderItems = [];
  String? _lat;
  String? _lng;
  final List<OrderEntity> _orders = [];
  bool _hasReachMax = false;
  int _currPage = 1;

  OrderBloc() : super(const OrderState.initial()) {
    on<OrderEvent>((event, emit) async {
      await event.mapOrNull(
        started: (value) {
          _orderTypeId = 2;
          _paymentMethodId = -1;
          emit(const OrderState.detailsLoading());
        },
        getOrderDetails: (value) async => await _onGetOrderDetails(emit, value),
        getOrderSubTotal: (value) async =>
            await _onGetOrderSubTotal(emit, value),
        sendOrder: (value) async => await _onSendOrder(emit, value),
        cancelOrder: (value) async => await _onCancelOrder(emit, value),
      );
    });
    on<_GetOrders>(
        (event, emit) => event.mapOrNull(
              getOrders: (value) async => await _onGetOrders(emit, value),
            ),
        transformer: throttleDroppable(throttleDuration));
  }

  Future<void> _onGetOrderDetails(
      Emitter<OrderState> emit, _GetOrderDetails event) async {
    if (_paymentMethodId != -1 && _orderTypeId != -1 && _dealershipId !=-1) {
      if (_currentOrderTypeId == _orderTypeId &&
          _currentDealershipId == _dealershipId &&
          _currentOrderItems == _orderItems &&
          _currentPaymentMethodId == _paymentMethodId) {
        LoggerService().logDebug(message: 'no thing changed');
      } else {
        try {
          LoggerService().logCatchDebug(message:'Get order details');
          emit(const OrderState.detailsLoading());
          var result = await _getOrderDetails.execute(OrderDetailsParameters(
              items: _orderItems,
              paymentMethodId: _paymentMethodId,
              dealershipId: _dealershipId,
              orderTypeId: _orderTypeId));
          await result.whenSuccess((success) async {
            _currentOrderItems = _orderItems;
            _currentPaymentMethodId = _paymentMethodId;
            _currentOrderTypeId = _orderTypeId;
            _currentDealershipId = _dealershipId;
            emit(OrderState.detailsLoaded(success.data));
          });
          result.whenError((error) => emit(OrderState.failed(error.message)));
        } catch (e) {
          emit(OrderState.failed(e.toString()));
        }
      }
    }
  }

  Future<void> _onGetOrders(Emitter<OrderState> emit, _GetOrders event) async {
    if (event.firstFetch) {
      _currPage = 1;
      _hasReachMax = false;
      _orders.clear();
      emit(const OrderState.loading());
    }
    if (_hasReachMax) return;
    try {
      var result = await _getOrders.execute(PaginationParams(page: _currPage));
      await result.whenSuccess((success) async {
        if (success.pagination?.currentPage == success.pagination?.lastPage) {
          _hasReachMax = true;
        }
        _orders.addAll(success.data);
        emit(OrderState.loaded(List.from(_orders), _hasReachMax));
      });
      result.whenError((error) => emit(OrderState.failed(error.message)));
    } catch (e) {
      emit(OrderState.failed(e.toString()));
    }
    _currPage++;
  }

  Future<void> _onGetOrderSubTotal(
      Emitter<OrderState> emit, _GetOrderSubTotal event) async {
    try {
      emit(const OrderState.detailsLoading());
      var result = await _getOrderDetails
          .execute(OrderDetailsParameters(items: _orderItems));
      await result.whenSuccess((success) async {
        emit(OrderState.detailsLoaded(success.data));
      });
      result.whenError((error) => emit(OrderState.failed(error.message)));
    } catch (e) {
      emit(OrderState.failed(e.toString()));
    }
  }

  Future<void> _onSendOrder(Emitter<OrderState> emit, _SendOrder event) async {
    if (_paymentMethodId != -1 && _orderTypeId != -1 || _orderId != -1) {
      try {
        emit(const OrderState.checkoutLoading());
        var result = event.isPay
            ? await _payOrder.execute(PayOrderParameters(paymentMethodId: _paymentMethodId, orderId: _orderId))
            : await _sendOrder.execute(OrderParameters(
                items: _orderItems,
                paymentMethodId: _paymentMethodId,
                orderTypeId: _orderTypeId,
                dealershipId: _dealershipId,
                long: _lng,
                lat: _lat));
        await result.whenSuccess((success) async {
          emit(OrderState.orderSucceed(success.data));
        });
        result.whenError((error) => emit(OrderState.failed(error.message)));
      } catch (e) {
        emit(OrderState.failed(e.toString()));
      }
    } else {
      emit(OrderState.invalidParameters(
          LocaleKeys.cart_invalidOrderParameters.tr()));
    }
  }

  Future<void> _onCancelOrder(
      Emitter<OrderState> emit, _CancelOrder event) async {
    try {
      emit(const OrderState.cancelLoading());
      var result = await _cancelOrder.execute(event.id);
      await result.whenSuccess((success) async {
        emit(const OrderState.canceled());
      });
      result.whenError((error) => emit(OrderState.failed(error.message)));
    } catch (e) {
      emit(OrderState.failed(e.toString()));
    }
  }

  set orderId(int id) => _orderId = id;

  get selectedPaymentMethodId => _paymentMethodId;

  void setSelectedOrderType(int id) {
    _orderTypeId = id;
  }

  void setSelectedLat(String lat) {
    _lat = lat;
  }

  void setSelectedLong(String long) {
    _lng = long;
  }

  void setSelectedPaymentMethod(int id) {
    _paymentMethodId = id;
  }

  void setSelectedDealershipId(int id) {
    _dealershipId = id;
  }

  void setOrderItems(List<CartItem> items) {
    List<OrderItem> orderItems = items
        .map((e) => OrderItem(id: e.sparePart.id!, quantity: e.quantity))
        .toList();
    _orderItems = orderItems;
  }
}
