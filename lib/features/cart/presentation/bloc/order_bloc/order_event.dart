part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = _Started;
  const factory OrderEvent.getOrderDetails() = _GetOrderDetails;
  const factory OrderEvent.getOrders(bool firstFetch) = _GetOrders;
  const factory OrderEvent.getOrderSubTotal() = _GetOrderSubTotal;
  const factory OrderEvent.sendOrder(bool isPay) = _SendOrder;
  const factory OrderEvent.cancelOrder(int id) = _CancelOrder;
}
