// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderDetails,
    required TResult Function(bool firstFetch) getOrders,
    required TResult Function() getOrderSubTotal,
    required TResult Function(bool isPay) sendOrder,
    required TResult Function(int id) cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderDetails,
    TResult? Function(bool firstFetch)? getOrders,
    TResult? Function()? getOrderSubTotal,
    TResult? Function(bool isPay)? sendOrder,
    TResult? Function(int id)? cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderDetails,
    TResult Function(bool firstFetch)? getOrders,
    TResult Function()? getOrderSubTotal,
    TResult Function(bool isPay)? sendOrder,
    TResult Function(int id)? cancelOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderSubTotal value) getOrderSubTotal,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OrderEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderDetails,
    required TResult Function(bool firstFetch) getOrders,
    required TResult Function() getOrderSubTotal,
    required TResult Function(bool isPay) sendOrder,
    required TResult Function(int id) cancelOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderDetails,
    TResult? Function(bool firstFetch)? getOrders,
    TResult? Function()? getOrderSubTotal,
    TResult? Function(bool isPay)? sendOrder,
    TResult? Function(int id)? cancelOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderDetails,
    TResult Function(bool firstFetch)? getOrders,
    TResult Function()? getOrderSubTotal,
    TResult Function(bool isPay)? sendOrder,
    TResult Function(int id)? cancelOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderSubTotal value) getOrderSubTotal,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetOrderDetailsImplCopyWith<$Res> {
  factory _$$GetOrderDetailsImplCopyWith(_$GetOrderDetailsImpl value,
          $Res Function(_$GetOrderDetailsImpl) then) =
      __$$GetOrderDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrderDetailsImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrderDetailsImpl>
    implements _$$GetOrderDetailsImplCopyWith<$Res> {
  __$$GetOrderDetailsImplCopyWithImpl(
      _$GetOrderDetailsImpl _value, $Res Function(_$GetOrderDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOrderDetailsImpl implements _GetOrderDetails {
  const _$GetOrderDetailsImpl();

  @override
  String toString() {
    return 'OrderEvent.getOrderDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrderDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderDetails,
    required TResult Function(bool firstFetch) getOrders,
    required TResult Function() getOrderSubTotal,
    required TResult Function(bool isPay) sendOrder,
    required TResult Function(int id) cancelOrder,
  }) {
    return getOrderDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderDetails,
    TResult? Function(bool firstFetch)? getOrders,
    TResult? Function()? getOrderSubTotal,
    TResult? Function(bool isPay)? sendOrder,
    TResult? Function(int id)? cancelOrder,
  }) {
    return getOrderDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderDetails,
    TResult Function(bool firstFetch)? getOrders,
    TResult Function()? getOrderSubTotal,
    TResult Function(bool isPay)? sendOrder,
    TResult Function(int id)? cancelOrder,
    required TResult orElse(),
  }) {
    if (getOrderDetails != null) {
      return getOrderDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderSubTotal value) getOrderSubTotal,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return getOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return getOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (getOrderDetails != null) {
      return getOrderDetails(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetails implements OrderEvent {
  const factory _GetOrderDetails() = _$GetOrderDetailsImpl;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool firstFetch});
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstFetch = null,
  }) {
    return _then(_$GetOrdersImpl(
      null == firstFetch
          ? _value.firstFetch
          : firstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl(this.firstFetch);

  @override
  final bool firstFetch;

  @override
  String toString() {
    return 'OrderEvent.getOrders(firstFetch: $firstFetch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersImpl &&
            (identical(other.firstFetch, firstFetch) ||
                other.firstFetch == firstFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstFetch);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      __$$GetOrdersImplCopyWithImpl<_$GetOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderDetails,
    required TResult Function(bool firstFetch) getOrders,
    required TResult Function() getOrderSubTotal,
    required TResult Function(bool isPay) sendOrder,
    required TResult Function(int id) cancelOrder,
  }) {
    return getOrders(firstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderDetails,
    TResult? Function(bool firstFetch)? getOrders,
    TResult? Function()? getOrderSubTotal,
    TResult? Function(bool isPay)? sendOrder,
    TResult? Function(int id)? cancelOrder,
  }) {
    return getOrders?.call(firstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderDetails,
    TResult Function(bool firstFetch)? getOrders,
    TResult Function()? getOrderSubTotal,
    TResult Function(bool isPay)? sendOrder,
    TResult Function(int id)? cancelOrder,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(firstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderSubTotal value) getOrderSubTotal,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements OrderEvent {
  const factory _GetOrders(final bool firstFetch) = _$GetOrdersImpl;

  bool get firstFetch;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrderSubTotalImplCopyWith<$Res> {
  factory _$$GetOrderSubTotalImplCopyWith(_$GetOrderSubTotalImpl value,
          $Res Function(_$GetOrderSubTotalImpl) then) =
      __$$GetOrderSubTotalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrderSubTotalImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrderSubTotalImpl>
    implements _$$GetOrderSubTotalImplCopyWith<$Res> {
  __$$GetOrderSubTotalImplCopyWithImpl(_$GetOrderSubTotalImpl _value,
      $Res Function(_$GetOrderSubTotalImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOrderSubTotalImpl implements _GetOrderSubTotal {
  const _$GetOrderSubTotalImpl();

  @override
  String toString() {
    return 'OrderEvent.getOrderSubTotal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrderSubTotalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderDetails,
    required TResult Function(bool firstFetch) getOrders,
    required TResult Function() getOrderSubTotal,
    required TResult Function(bool isPay) sendOrder,
    required TResult Function(int id) cancelOrder,
  }) {
    return getOrderSubTotal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderDetails,
    TResult? Function(bool firstFetch)? getOrders,
    TResult? Function()? getOrderSubTotal,
    TResult? Function(bool isPay)? sendOrder,
    TResult? Function(int id)? cancelOrder,
  }) {
    return getOrderSubTotal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderDetails,
    TResult Function(bool firstFetch)? getOrders,
    TResult Function()? getOrderSubTotal,
    TResult Function(bool isPay)? sendOrder,
    TResult Function(int id)? cancelOrder,
    required TResult orElse(),
  }) {
    if (getOrderSubTotal != null) {
      return getOrderSubTotal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderSubTotal value) getOrderSubTotal,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return getOrderSubTotal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return getOrderSubTotal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (getOrderSubTotal != null) {
      return getOrderSubTotal(this);
    }
    return orElse();
  }
}

abstract class _GetOrderSubTotal implements OrderEvent {
  const factory _GetOrderSubTotal() = _$GetOrderSubTotalImpl;
}

/// @nodoc
abstract class _$$SendOrderImplCopyWith<$Res> {
  factory _$$SendOrderImplCopyWith(
          _$SendOrderImpl value, $Res Function(_$SendOrderImpl) then) =
      __$$SendOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPay});
}

/// @nodoc
class __$$SendOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SendOrderImpl>
    implements _$$SendOrderImplCopyWith<$Res> {
  __$$SendOrderImplCopyWithImpl(
      _$SendOrderImpl _value, $Res Function(_$SendOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPay = null,
  }) {
    return _then(_$SendOrderImpl(
      null == isPay
          ? _value.isPay
          : isPay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SendOrderImpl implements _SendOrder {
  const _$SendOrderImpl(this.isPay);

  @override
  final bool isPay;

  @override
  String toString() {
    return 'OrderEvent.sendOrder(isPay: $isPay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOrderImpl &&
            (identical(other.isPay, isPay) || other.isPay == isPay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPay);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOrderImplCopyWith<_$SendOrderImpl> get copyWith =>
      __$$SendOrderImplCopyWithImpl<_$SendOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderDetails,
    required TResult Function(bool firstFetch) getOrders,
    required TResult Function() getOrderSubTotal,
    required TResult Function(bool isPay) sendOrder,
    required TResult Function(int id) cancelOrder,
  }) {
    return sendOrder(isPay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderDetails,
    TResult? Function(bool firstFetch)? getOrders,
    TResult? Function()? getOrderSubTotal,
    TResult? Function(bool isPay)? sendOrder,
    TResult? Function(int id)? cancelOrder,
  }) {
    return sendOrder?.call(isPay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderDetails,
    TResult Function(bool firstFetch)? getOrders,
    TResult Function()? getOrderSubTotal,
    TResult Function(bool isPay)? sendOrder,
    TResult Function(int id)? cancelOrder,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(isPay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderSubTotal value) getOrderSubTotal,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return sendOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return sendOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(this);
    }
    return orElse();
  }
}

abstract class _SendOrder implements OrderEvent {
  const factory _SendOrder(final bool isPay) = _$SendOrderImpl;

  bool get isPay;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOrderImplCopyWith<_$SendOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderImplCopyWith<$Res> {
  factory _$$CancelOrderImplCopyWith(
          _$CancelOrderImpl value, $Res Function(_$CancelOrderImpl) then) =
      __$$CancelOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$CancelOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CancelOrderImpl>
    implements _$$CancelOrderImplCopyWith<$Res> {
  __$$CancelOrderImplCopyWithImpl(
      _$CancelOrderImpl _value, $Res Function(_$CancelOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CancelOrderImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CancelOrderImpl implements _CancelOrder {
  const _$CancelOrderImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'OrderEvent.cancelOrder(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      __$$CancelOrderImplCopyWithImpl<_$CancelOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderDetails,
    required TResult Function(bool firstFetch) getOrders,
    required TResult Function() getOrderSubTotal,
    required TResult Function(bool isPay) sendOrder,
    required TResult Function(int id) cancelOrder,
  }) {
    return cancelOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderDetails,
    TResult? Function(bool firstFetch)? getOrders,
    TResult? Function()? getOrderSubTotal,
    TResult? Function(bool isPay)? sendOrder,
    TResult? Function(int id)? cancelOrder,
  }) {
    return cancelOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderDetails,
    TResult Function(bool firstFetch)? getOrders,
    TResult Function()? getOrderSubTotal,
    TResult Function(bool isPay)? sendOrder,
    TResult Function(int id)? cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderSubTotal value) getOrderSubTotal,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_CancelOrder value)? cancelOrder,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderSubTotal value)? getOrderSubTotal,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements OrderEvent {
  const factory _CancelOrder(final int id) = _$CancelOrderImpl;

  int get id;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DetailsLoadingImplCopyWith<$Res> {
  factory _$$DetailsLoadingImplCopyWith(_$DetailsLoadingImpl value,
          $Res Function(_$DetailsLoadingImpl) then) =
      __$$DetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsLoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$DetailsLoadingImpl>
    implements _$$DetailsLoadingImplCopyWith<$Res> {
  __$$DetailsLoadingImplCopyWithImpl(
      _$DetailsLoadingImpl _value, $Res Function(_$DetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetailsLoadingImpl implements _DetailsLoading {
  const _$DetailsLoadingImpl();

  @override
  String toString() {
    return 'OrderState.detailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return detailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return detailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (detailsLoading != null) {
      return detailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return detailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return detailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (detailsLoading != null) {
      return detailsLoading(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoading implements OrderState {
  const factory _DetailsLoading() = _$DetailsLoadingImpl;
}

/// @nodoc
abstract class _$$CancelLoadingImplCopyWith<$Res> {
  factory _$$CancelLoadingImplCopyWith(
          _$CancelLoadingImpl value, $Res Function(_$CancelLoadingImpl) then) =
      __$$CancelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelLoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$CancelLoadingImpl>
    implements _$$CancelLoadingImplCopyWith<$Res> {
  __$$CancelLoadingImplCopyWithImpl(
      _$CancelLoadingImpl _value, $Res Function(_$CancelLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelLoadingImpl implements _CancelLoading {
  const _$CancelLoadingImpl();

  @override
  String toString() {
    return 'OrderState.cancelLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return cancelLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return cancelLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (cancelLoading != null) {
      return cancelLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return cancelLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return cancelLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (cancelLoading != null) {
      return cancelLoading(this);
    }
    return orElse();
  }
}

abstract class _CancelLoading implements OrderState {
  const factory _CancelLoading() = _$CancelLoadingImpl;
}

/// @nodoc
abstract class _$$CheckoutLoadingImplCopyWith<$Res> {
  factory _$$CheckoutLoadingImplCopyWith(_$CheckoutLoadingImpl value,
          $Res Function(_$CheckoutLoadingImpl) then) =
      __$$CheckoutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutLoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$CheckoutLoadingImpl>
    implements _$$CheckoutLoadingImplCopyWith<$Res> {
  __$$CheckoutLoadingImplCopyWithImpl(
      _$CheckoutLoadingImpl _value, $Res Function(_$CheckoutLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckoutLoadingImpl implements _CheckoutLoading {
  const _$CheckoutLoadingImpl();

  @override
  String toString() {
    return 'OrderState.checkoutLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return checkoutLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return checkoutLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (checkoutLoading != null) {
      return checkoutLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return checkoutLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return checkoutLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (checkoutLoading != null) {
      return checkoutLoading(this);
    }
    return orElse();
  }
}

abstract class _CheckoutLoading implements OrderState {
  const factory _CheckoutLoading() = _$CheckoutLoadingImpl;
}

/// @nodoc
abstract class _$$DetailsLoadedImplCopyWith<$Res> {
  factory _$$DetailsLoadedImplCopyWith(
          _$DetailsLoadedImpl value, $Res Function(_$DetailsLoadedImpl) then) =
      __$$DetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderDetails orderDetails});

  $OrderDetailsCopyWith<$Res> get orderDetails;
}

/// @nodoc
class __$$DetailsLoadedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$DetailsLoadedImpl>
    implements _$$DetailsLoadedImplCopyWith<$Res> {
  __$$DetailsLoadedImplCopyWithImpl(
      _$DetailsLoadedImpl _value, $Res Function(_$DetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetails = null,
  }) {
    return _then(_$DetailsLoadedImpl(
      null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as OrderDetails,
    ));
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsCopyWith<$Res> get orderDetails {
    return $OrderDetailsCopyWith<$Res>(_value.orderDetails, (value) {
      return _then(_value.copyWith(orderDetails: value));
    });
  }
}

/// @nodoc

class _$DetailsLoadedImpl implements _DetailsLoaded {
  const _$DetailsLoadedImpl(this.orderDetails);

  @override
  final OrderDetails orderDetails;

  @override
  String toString() {
    return 'OrderState.detailsLoaded(orderDetails: $orderDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsLoadedImpl &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDetails);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsLoadedImplCopyWith<_$DetailsLoadedImpl> get copyWith =>
      __$$DetailsLoadedImplCopyWithImpl<_$DetailsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return detailsLoaded(orderDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return detailsLoaded?.call(orderDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(orderDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return detailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return detailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoaded implements OrderState {
  const factory _DetailsLoaded(final OrderDetails orderDetails) =
      _$DetailsLoadedImpl;

  OrderDetails get orderDetails;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsLoadedImplCopyWith<_$DetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderEntity> orders, bool hasReachedMax});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$LoadedImpl(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<OrderEntity> orders, this.hasReachedMax)
      : _orders = orders;

  final List<OrderEntity> _orders;
  @override
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'OrderState.loaded(orders: $orders, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), hasReachedMax);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return loaded(orders, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return loaded?.call(orders, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orders, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OrderState {
  const factory _Loaded(
      final List<OrderEntity> orders, final bool hasReachedMax) = _$LoadedImpl;

  List<OrderEntity> get orders;
  bool get hasReachedMax;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderSucceedImplCopyWith<$Res> {
  factory _$$OrderSucceedImplCopyWith(
          _$OrderSucceedImpl value, $Res Function(_$OrderSucceedImpl) then) =
      __$$OrderSucceedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderSuccess orderSuccess});

  $OrderSuccessCopyWith<$Res> get orderSuccess;
}

/// @nodoc
class __$$OrderSucceedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderSucceedImpl>
    implements _$$OrderSucceedImplCopyWith<$Res> {
  __$$OrderSucceedImplCopyWithImpl(
      _$OrderSucceedImpl _value, $Res Function(_$OrderSucceedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderSuccess = null,
  }) {
    return _then(_$OrderSucceedImpl(
      null == orderSuccess
          ? _value.orderSuccess
          : orderSuccess // ignore: cast_nullable_to_non_nullable
              as OrderSuccess,
    ));
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderSuccessCopyWith<$Res> get orderSuccess {
    return $OrderSuccessCopyWith<$Res>(_value.orderSuccess, (value) {
      return _then(_value.copyWith(orderSuccess: value));
    });
  }
}

/// @nodoc

class _$OrderSucceedImpl implements _OrderSucceed {
  const _$OrderSucceedImpl(this.orderSuccess);

  @override
  final OrderSuccess orderSuccess;

  @override
  String toString() {
    return 'OrderState.orderSucceed(orderSuccess: $orderSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSucceedImpl &&
            (identical(other.orderSuccess, orderSuccess) ||
                other.orderSuccess == orderSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderSuccess);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSucceedImplCopyWith<_$OrderSucceedImpl> get copyWith =>
      __$$OrderSucceedImplCopyWithImpl<_$OrderSucceedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return orderSucceed(orderSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return orderSucceed?.call(orderSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (orderSucceed != null) {
      return orderSucceed(orderSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return orderSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return orderSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (orderSucceed != null) {
      return orderSucceed(this);
    }
    return orElse();
  }
}

abstract class _OrderSucceed implements OrderState {
  const factory _OrderSucceed(final OrderSuccess orderSuccess) =
      _$OrderSucceedImpl;

  OrderSuccess get orderSuccess;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderSucceedImplCopyWith<_$OrderSucceedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidParametersImplCopyWith<$Res> {
  factory _$$InvalidParametersImplCopyWith(_$InvalidParametersImpl value,
          $Res Function(_$InvalidParametersImpl) then) =
      __$$InvalidParametersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String validationMessage});
}

/// @nodoc
class __$$InvalidParametersImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InvalidParametersImpl>
    implements _$$InvalidParametersImplCopyWith<$Res> {
  __$$InvalidParametersImplCopyWithImpl(_$InvalidParametersImpl _value,
      $Res Function(_$InvalidParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationMessage = null,
  }) {
    return _then(_$InvalidParametersImpl(
      null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidParametersImpl implements _InvalidParameters {
  const _$InvalidParametersImpl(this.validationMessage);

  @override
  final String validationMessage;

  @override
  String toString() {
    return 'OrderState.invalidParameters(validationMessage: $validationMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParametersImpl &&
            (identical(other.validationMessage, validationMessage) ||
                other.validationMessage == validationMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationMessage);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidParametersImplCopyWith<_$InvalidParametersImpl> get copyWith =>
      __$$InvalidParametersImplCopyWithImpl<_$InvalidParametersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return invalidParameters(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return invalidParameters?.call(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(validationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return invalidParameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return invalidParameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(this);
    }
    return orElse();
  }
}

abstract class _InvalidParameters implements OrderState {
  const factory _InvalidParameters(final String validationMessage) =
      _$InvalidParametersImpl;

  String get validationMessage;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidParametersImplCopyWith<_$InvalidParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'OrderState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements OrderState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CanceledImplCopyWith<$Res> {
  factory _$$CanceledImplCopyWith(
          _$CanceledImpl value, $Res Function(_$CanceledImpl) then) =
      __$$CanceledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanceledImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$CanceledImpl>
    implements _$$CanceledImplCopyWith<$Res> {
  __$$CanceledImplCopyWithImpl(
      _$CanceledImpl _value, $Res Function(_$CanceledImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CanceledImpl implements _Canceled {
  const _$CanceledImpl();

  @override
  String toString() {
    return 'OrderState.canceled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CanceledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function() cancelLoading,
    required TResult Function() checkoutLoading,
    required TResult Function(OrderDetails orderDetails) detailsLoaded,
    required TResult Function(List<OrderEntity> orders, bool hasReachedMax)
        loaded,
    required TResult Function(OrderSuccess orderSuccess) orderSucceed,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
    required TResult Function() canceled,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function()? cancelLoading,
    TResult? Function()? checkoutLoading,
    TResult? Function(OrderDetails orderDetails)? detailsLoaded,
    TResult? Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult? Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? canceled,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function()? cancelLoading,
    TResult Function()? checkoutLoading,
    TResult Function(OrderDetails orderDetails)? detailsLoaded,
    TResult Function(List<OrderEntity> orders, bool hasReachedMax)? loaded,
    TResult Function(OrderSuccess orderSuccess)? orderSucceed,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_CancelLoading value) cancelLoading,
    required TResult Function(_CheckoutLoading value) checkoutLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderSucceed value) orderSucceed,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Canceled value) canceled,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_CancelLoading value)? cancelLoading,
    TResult? Function(_CheckoutLoading value)? checkoutLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderSucceed value)? orderSucceed,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_CancelLoading value)? cancelLoading,
    TResult Function(_CheckoutLoading value)? checkoutLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderSucceed value)? orderSucceed,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class _Canceled implements OrderState {
  const factory _Canceled() = _$CanceledImpl;
}
