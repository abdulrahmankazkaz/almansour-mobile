part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial(List<CartItem> items) = _Initial;
  const factory CartState.loaded(List<CartItem> items) = _Loaded;
}
