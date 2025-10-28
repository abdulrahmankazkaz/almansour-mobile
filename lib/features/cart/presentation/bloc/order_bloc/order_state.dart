part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loading() = _Loading;
  const factory OrderState.detailsLoading() = _DetailsLoading;
  const factory OrderState.cancelLoading() = _CancelLoading;
  const factory OrderState.checkoutLoading() = _CheckoutLoading;
  const factory OrderState.detailsLoaded(OrderDetails orderDetails) = _DetailsLoaded;
  const factory OrderState.loaded(List<OrderEntity> orders,bool hasReachedMax) = _Loaded;
  const factory OrderState.orderSucceed(OrderSuccess orderSuccess) = _OrderSucceed;
  const factory OrderState.invalidParameters(String validationMessage) = _InvalidParameters;
  const factory OrderState.failed(String errorMessage) = _Failed;
  const factory OrderState.canceled() = _Canceled;
}
