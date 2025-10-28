part of 'order_details_bloc.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.initial() = _Initial;
  const factory OrderDetailsState.selected(OrderEntity orderEntity) = _Selected;
  const factory OrderDetailsState.loading() = _Loading;
  const factory OrderDetailsState.termsLoaded(List<String> terms) = _TermsLoaded;
  const factory OrderDetailsState.failed(String errorMessage) = _Failed;
}
