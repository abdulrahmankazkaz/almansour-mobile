// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderType,
    required TResult Function() getPaymentMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderType,
    TResult? Function()? getPaymentMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderType,
    TResult Function()? getPaymentMethods,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderType value) getOrderType,
    required TResult Function(_GetPaymentMethods value) getPaymentMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderType value)? getOrderType,
    TResult? Function(_GetPaymentMethods value)? getPaymentMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderType value)? getOrderType,
    TResult Function(_GetPaymentMethods value)? getPaymentMethods,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
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
    extends _$MainEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MainEvent.started()';
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
    required TResult Function() getOrderType,
    required TResult Function() getPaymentMethods,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderType,
    TResult? Function()? getPaymentMethods,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderType,
    TResult Function()? getPaymentMethods,
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
    required TResult Function(_GetOrderType value) getOrderType,
    required TResult Function(_GetPaymentMethods value) getPaymentMethods,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderType value)? getOrderType,
    TResult? Function(_GetPaymentMethods value)? getPaymentMethods,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderType value)? getOrderType,
    TResult Function(_GetPaymentMethods value)? getPaymentMethods,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetOrderTypeImplCopyWith<$Res> {
  factory _$$GetOrderTypeImplCopyWith(
          _$GetOrderTypeImpl value, $Res Function(_$GetOrderTypeImpl) then) =
      __$$GetOrderTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrderTypeImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetOrderTypeImpl>
    implements _$$GetOrderTypeImplCopyWith<$Res> {
  __$$GetOrderTypeImplCopyWithImpl(
      _$GetOrderTypeImpl _value, $Res Function(_$GetOrderTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOrderTypeImpl implements _GetOrderType {
  const _$GetOrderTypeImpl();

  @override
  String toString() {
    return 'MainEvent.getOrderType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrderTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderType,
    required TResult Function() getPaymentMethods,
  }) {
    return getOrderType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderType,
    TResult? Function()? getPaymentMethods,
  }) {
    return getOrderType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderType,
    TResult Function()? getPaymentMethods,
    required TResult orElse(),
  }) {
    if (getOrderType != null) {
      return getOrderType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderType value) getOrderType,
    required TResult Function(_GetPaymentMethods value) getPaymentMethods,
  }) {
    return getOrderType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderType value)? getOrderType,
    TResult? Function(_GetPaymentMethods value)? getPaymentMethods,
  }) {
    return getOrderType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderType value)? getOrderType,
    TResult Function(_GetPaymentMethods value)? getPaymentMethods,
    required TResult orElse(),
  }) {
    if (getOrderType != null) {
      return getOrderType(this);
    }
    return orElse();
  }
}

abstract class _GetOrderType implements MainEvent {
  const factory _GetOrderType() = _$GetOrderTypeImpl;
}

/// @nodoc
abstract class _$$GetPaymentMethodsImplCopyWith<$Res> {
  factory _$$GetPaymentMethodsImplCopyWith(_$GetPaymentMethodsImpl value,
          $Res Function(_$GetPaymentMethodsImpl) then) =
      __$$GetPaymentMethodsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPaymentMethodsImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetPaymentMethodsImpl>
    implements _$$GetPaymentMethodsImplCopyWith<$Res> {
  __$$GetPaymentMethodsImplCopyWithImpl(_$GetPaymentMethodsImpl _value,
      $Res Function(_$GetPaymentMethodsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPaymentMethodsImpl implements _GetPaymentMethods {
  const _$GetPaymentMethodsImpl();

  @override
  String toString() {
    return 'MainEvent.getPaymentMethods()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPaymentMethodsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOrderType,
    required TResult Function() getPaymentMethods,
  }) {
    return getPaymentMethods();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOrderType,
    TResult? Function()? getPaymentMethods,
  }) {
    return getPaymentMethods?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOrderType,
    TResult Function()? getPaymentMethods,
    required TResult orElse(),
  }) {
    if (getPaymentMethods != null) {
      return getPaymentMethods();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrderType value) getOrderType,
    required TResult Function(_GetPaymentMethods value) getPaymentMethods,
  }) {
    return getPaymentMethods(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrderType value)? getOrderType,
    TResult? Function(_GetPaymentMethods value)? getPaymentMethods,
  }) {
    return getPaymentMethods?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrderType value)? getOrderType,
    TResult Function(_GetPaymentMethods value)? getPaymentMethods,
    required TResult orElse(),
  }) {
    if (getPaymentMethods != null) {
      return getPaymentMethods(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentMethods implements MainEvent {
  const factory _GetPaymentMethods() = _$GetPaymentMethodsImpl;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> orderTypes) orderTypeLoaded,
    required TResult Function(List<BasicModel> paymentMethods)
        paymentMethodsLoaded,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult? Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderTypeLoaded value) orderTypeLoaded,
    required TResult Function(_PaymentMethodsLoaded value) paymentMethodsLoaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult? Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
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
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MainState.initial()';
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
    required TResult Function(List<BasicModel> orderTypes) orderTypeLoaded,
    required TResult Function(List<BasicModel> paymentMethods)
        paymentMethodsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult? Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult Function(String errorMessage)? failed,
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
    required TResult Function(_OrderTypeLoaded value) orderTypeLoaded,
    required TResult Function(_PaymentMethodsLoaded value) paymentMethodsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult? Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
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
    extends _$MainStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MainState.loading()';
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
    required TResult Function(List<BasicModel> orderTypes) orderTypeLoaded,
    required TResult Function(List<BasicModel> paymentMethods)
        paymentMethodsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult? Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult Function(String errorMessage)? failed,
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
    required TResult Function(_OrderTypeLoaded value) orderTypeLoaded,
    required TResult Function(_PaymentMethodsLoaded value) paymentMethodsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult? Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MainState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OrderTypeLoadedImplCopyWith<$Res> {
  factory _$$OrderTypeLoadedImplCopyWith(_$OrderTypeLoadedImpl value,
          $Res Function(_$OrderTypeLoadedImpl) then) =
      __$$OrderTypeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasicModel> orderTypes});
}

/// @nodoc
class __$$OrderTypeLoadedImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$OrderTypeLoadedImpl>
    implements _$$OrderTypeLoadedImplCopyWith<$Res> {
  __$$OrderTypeLoadedImplCopyWithImpl(
      _$OrderTypeLoadedImpl _value, $Res Function(_$OrderTypeLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderTypes = null,
  }) {
    return _then(_$OrderTypeLoadedImpl(
      null == orderTypes
          ? _value._orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<BasicModel>,
    ));
  }
}

/// @nodoc

class _$OrderTypeLoadedImpl implements _OrderTypeLoaded {
  const _$OrderTypeLoadedImpl(final List<BasicModel> orderTypes)
      : _orderTypes = orderTypes;

  final List<BasicModel> _orderTypes;
  @override
  List<BasicModel> get orderTypes {
    if (_orderTypes is EqualUnmodifiableListView) return _orderTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderTypes);
  }

  @override
  String toString() {
    return 'MainState.orderTypeLoaded(orderTypes: $orderTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTypeLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._orderTypes, _orderTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderTypes));

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTypeLoadedImplCopyWith<_$OrderTypeLoadedImpl> get copyWith =>
      __$$OrderTypeLoadedImplCopyWithImpl<_$OrderTypeLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> orderTypes) orderTypeLoaded,
    required TResult Function(List<BasicModel> paymentMethods)
        paymentMethodsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return orderTypeLoaded(orderTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult? Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return orderTypeLoaded?.call(orderTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (orderTypeLoaded != null) {
      return orderTypeLoaded(orderTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderTypeLoaded value) orderTypeLoaded,
    required TResult Function(_PaymentMethodsLoaded value) paymentMethodsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return orderTypeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult? Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return orderTypeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (orderTypeLoaded != null) {
      return orderTypeLoaded(this);
    }
    return orElse();
  }
}

abstract class _OrderTypeLoaded implements MainState {
  const factory _OrderTypeLoaded(final List<BasicModel> orderTypes) =
      _$OrderTypeLoadedImpl;

  List<BasicModel> get orderTypes;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTypeLoadedImplCopyWith<_$OrderTypeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentMethodsLoadedImplCopyWith<$Res> {
  factory _$$PaymentMethodsLoadedImplCopyWith(_$PaymentMethodsLoadedImpl value,
          $Res Function(_$PaymentMethodsLoadedImpl) then) =
      __$$PaymentMethodsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasicModel> paymentMethods});
}

/// @nodoc
class __$$PaymentMethodsLoadedImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$PaymentMethodsLoadedImpl>
    implements _$$PaymentMethodsLoadedImplCopyWith<$Res> {
  __$$PaymentMethodsLoadedImplCopyWithImpl(_$PaymentMethodsLoadedImpl _value,
      $Res Function(_$PaymentMethodsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethods = null,
  }) {
    return _then(_$PaymentMethodsLoadedImpl(
      null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<BasicModel>,
    ));
  }
}

/// @nodoc

class _$PaymentMethodsLoadedImpl implements _PaymentMethodsLoaded {
  const _$PaymentMethodsLoadedImpl(final List<BasicModel> paymentMethods)
      : _paymentMethods = paymentMethods;

  final List<BasicModel> _paymentMethods;
  @override
  List<BasicModel> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  String toString() {
    return 'MainState.paymentMethodsLoaded(paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentMethods));

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodsLoadedImplCopyWith<_$PaymentMethodsLoadedImpl>
      get copyWith =>
          __$$PaymentMethodsLoadedImplCopyWithImpl<_$PaymentMethodsLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> orderTypes) orderTypeLoaded,
    required TResult Function(List<BasicModel> paymentMethods)
        paymentMethodsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return paymentMethodsLoaded(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult? Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return paymentMethodsLoaded?.call(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (paymentMethodsLoaded != null) {
      return paymentMethodsLoaded(paymentMethods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderTypeLoaded value) orderTypeLoaded,
    required TResult Function(_PaymentMethodsLoaded value) paymentMethodsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return paymentMethodsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult? Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return paymentMethodsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (paymentMethodsLoaded != null) {
      return paymentMethodsLoaded(this);
    }
    return orElse();
  }
}

abstract class _PaymentMethodsLoaded implements MainState {
  const factory _PaymentMethodsLoaded(final List<BasicModel> paymentMethods) =
      _$PaymentMethodsLoadedImpl;

  List<BasicModel> get paymentMethods;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodsLoadedImplCopyWith<_$PaymentMethodsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$MainStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
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
    return 'MainState.failed(errorMessage: $errorMessage)';
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

  /// Create a copy of MainState
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
    required TResult Function(List<BasicModel> orderTypes) orderTypeLoaded,
    required TResult Function(List<BasicModel> paymentMethods)
        paymentMethodsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult? Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> orderTypes)? orderTypeLoaded,
    TResult Function(List<BasicModel> paymentMethods)? paymentMethodsLoaded,
    TResult Function(String errorMessage)? failed,
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
    required TResult Function(_OrderTypeLoaded value) orderTypeLoaded,
    required TResult Function(_PaymentMethodsLoaded value) paymentMethodsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult? Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderTypeLoaded value)? orderTypeLoaded,
    TResult Function(_PaymentMethodsLoaded value)? paymentMethodsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements MainState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
