import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/utils/extensions/extensions.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/utils/local_storage/app_preferences.dart';
import '../../../entities/cart_item/cart_item.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.loaded(getIt<AppPreferences>().userPreferences.getUserCart));
  final List<CartItem> _items = getIt<AppPreferences>().userPreferences.getUserCart;

  Future<void> addItem(CartItem newItem) async {
    _items.add(newItem);
    await getIt<AppPreferences>().userPreferences.saveUserCart(_items);
    emit(CartState.loaded(List<CartItem>.from(_items)));
  }

  Future<void> removeItem(int itemId) async {
    _items.removeWhere((item) => item.sparePart.id == itemId);
    if (_items.isEmpty) {
      await getIt<AppPreferences>().userPreferences.removeUserCart();
      emit(const CartState.loaded([]));
    } else {
      await getIt<AppPreferences>().userPreferences.saveUserCart(_items);
      emit(CartState.loaded(List<CartItem>.from(_items)));
    }
  }

 void clearCart() {
    _items.clear();
    getIt<AppPreferences>().userPreferences.removeUserCart();
    emit(const CartState.loaded([]));
  }

  Future<void> increaseQuantity(int itemId)  async {
    final index = _items.indexWhere((item) => item.sparePart.id == itemId);
    if (index != -1) {
      _items[index] =
          _items[index].copyWith(quantity: _items[index].quantity + 1);
      await getIt<AppPreferences>().userPreferences.saveUserCart(_items);
      emit(CartState.loaded(List<CartItem>.from(_items)));
    }
  }

  Future<void> decreaseQuantity(int itemId) async {
    final index = _items.indexWhere((item) => item.sparePart.id == itemId);
    if (index != -1 && _items[index].quantity > 0) {
      _items[index] =
          _items[index].copyWith(quantity: _items[index].quantity - 1);
      await getIt<AppPreferences>().userPreferences.saveUserCart(_items);
      emit(CartState.loaded(List<CartItem>.from(_items)));
    }
  }

  int? getQuantityById(int itemId) {
    final CartItem? item = _items.firstWhereOrNull(
          (item) => item.sparePart.id! == itemId,
    );
    return item?.quantity;
  }
  int getCartSize() {
    return _items.length;
  }

  bool isItemInCart(int itemId) {
    return _items.any((item) => item.sparePart.id == itemId);
  }

  double calculatePrice() {
    double totalPrice = 0;
    for (final item in _items) {
      totalPrice += item.sparePart.price! * item.quantity;
    }
    return totalPrice;
  }
}
