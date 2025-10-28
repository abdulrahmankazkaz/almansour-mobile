// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OrderEntity orderEntity) selectOrder,
    required TResult Function() getEPaymentTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderEntity orderEntity)? selectOrder,
    TResult? Function()? getEPaymentTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderEntity orderEntity)? selectOrder,
    TResult Function()? getEPaymentTerms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_GetEPaymentTerms value) getEPaymentTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_GetEPaymentTerms value)? getEPaymentTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_GetEPaymentTerms value)? getEPaymentTerms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsEventCopyWith<$Res> {
  factory $OrderDetailsEventCopyWith(
          OrderDetailsEvent value, $Res Function(OrderDetailsEvent) then) =
      _$OrderDetailsEventCopyWithImpl<$Res, OrderDetailsEvent>;
}

/// @nodoc
class _$OrderDetailsEventCopyWithImpl<$Res, $Val extends OrderDetailsEvent>
    implements $OrderDetailsEventCopyWith<$Res> {
  _$OrderDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsEvent
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
    extends _$OrderDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OrderDetailsEvent.started()';
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
    required TResult Function(OrderEntity orderEntity) selectOrder,
    required TResult Function() getEPaymentTerms,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderEntity orderEntity)? selectOrder,
    TResult? Function()? getEPaymentTerms,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderEntity orderEntity)? selectOrder,
    TResult Function()? getEPaymentTerms,
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
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_GetEPaymentTerms value) getEPaymentTerms,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_GetEPaymentTerms value)? getEPaymentTerms,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_GetEPaymentTerms value)? getEPaymentTerms,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectOrderImplCopyWith<$Res> {
  factory _$$SelectOrderImplCopyWith(
          _$SelectOrderImpl value, $Res Function(_$SelectOrderImpl) then) =
      __$$SelectOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderEntity orderEntity});

  $OrderEntityCopyWith<$Res> get orderEntity;
}

/// @nodoc
class __$$SelectOrderImplCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res, _$SelectOrderImpl>
    implements _$$SelectOrderImplCopyWith<$Res> {
  __$$SelectOrderImplCopyWithImpl(
      _$SelectOrderImpl _value, $Res Function(_$SelectOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderEntity = null,
  }) {
    return _then(_$SelectOrderImpl(
      null == orderEntity
          ? _value.orderEntity
          : orderEntity // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get orderEntity {
    return $OrderEntityCopyWith<$Res>(_value.orderEntity, (value) {
      return _then(_value.copyWith(orderEntity: value));
    });
  }
}

/// @nodoc

class _$SelectOrderImpl implements _SelectOrder {
  const _$SelectOrderImpl(this.orderEntity);

  @override
  final OrderEntity orderEntity;

  @override
  String toString() {
    return 'OrderDetailsEvent.selectOrder(orderEntity: $orderEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOrderImpl &&
            (identical(other.orderEntity, orderEntity) ||
                other.orderEntity == orderEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderEntity);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOrderImplCopyWith<_$SelectOrderImpl> get copyWith =>
      __$$SelectOrderImplCopyWithImpl<_$SelectOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OrderEntity orderEntity) selectOrder,
    required TResult Function() getEPaymentTerms,
  }) {
    return selectOrder(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderEntity orderEntity)? selectOrder,
    TResult? Function()? getEPaymentTerms,
  }) {
    return selectOrder?.call(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderEntity orderEntity)? selectOrder,
    TResult Function()? getEPaymentTerms,
    required TResult orElse(),
  }) {
    if (selectOrder != null) {
      return selectOrder(orderEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_GetEPaymentTerms value) getEPaymentTerms,
  }) {
    return selectOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_GetEPaymentTerms value)? getEPaymentTerms,
  }) {
    return selectOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_GetEPaymentTerms value)? getEPaymentTerms,
    required TResult orElse(),
  }) {
    if (selectOrder != null) {
      return selectOrder(this);
    }
    return orElse();
  }
}

abstract class _SelectOrder implements OrderDetailsEvent {
  const factory _SelectOrder(final OrderEntity orderEntity) = _$SelectOrderImpl;

  OrderEntity get orderEntity;

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectOrderImplCopyWith<_$SelectOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEPaymentTermsImplCopyWith<$Res> {
  factory _$$GetEPaymentTermsImplCopyWith(_$GetEPaymentTermsImpl value,
          $Res Function(_$GetEPaymentTermsImpl) then) =
      __$$GetEPaymentTermsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEPaymentTermsImplCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res, _$GetEPaymentTermsImpl>
    implements _$$GetEPaymentTermsImplCopyWith<$Res> {
  __$$GetEPaymentTermsImplCopyWithImpl(_$GetEPaymentTermsImpl _value,
      $Res Function(_$GetEPaymentTermsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetEPaymentTermsImpl implements _GetEPaymentTerms {
  const _$GetEPaymentTermsImpl();

  @override
  String toString() {
    return 'OrderDetailsEvent.getEPaymentTerms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEPaymentTermsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OrderEntity orderEntity) selectOrder,
    required TResult Function() getEPaymentTerms,
  }) {
    return getEPaymentTerms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderEntity orderEntity)? selectOrder,
    TResult? Function()? getEPaymentTerms,
  }) {
    return getEPaymentTerms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderEntity orderEntity)? selectOrder,
    TResult Function()? getEPaymentTerms,
    required TResult orElse(),
  }) {
    if (getEPaymentTerms != null) {
      return getEPaymentTerms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_GetEPaymentTerms value) getEPaymentTerms,
  }) {
    return getEPaymentTerms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_GetEPaymentTerms value)? getEPaymentTerms,
  }) {
    return getEPaymentTerms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_GetEPaymentTerms value)? getEPaymentTerms,
    required TResult orElse(),
  }) {
    if (getEPaymentTerms != null) {
      return getEPaymentTerms(this);
    }
    return orElse();
  }
}

abstract class _GetEPaymentTerms implements OrderDetailsEvent {
  const factory _GetEPaymentTerms() = _$GetEPaymentTermsImpl;
}

/// @nodoc
mixin _$OrderDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderEntity orderEntity) selected,
    required TResult Function() loading,
    required TResult Function(List<String> terms) termsLoaded,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity orderEntity)? selected,
    TResult? Function()? loading,
    TResult? Function(List<String> terms)? termsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity orderEntity)? selected,
    TResult Function()? loading,
    TResult Function(List<String> terms)? termsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TermsLoaded value) termsLoaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TermsLoaded value)? termsLoaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Loading value)? loading,
    TResult Function(_TermsLoaded value)? termsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsStateCopyWith<$Res> {
  factory $OrderDetailsStateCopyWith(
          OrderDetailsState value, $Res Function(OrderDetailsState) then) =
      _$OrderDetailsStateCopyWithImpl<$Res, OrderDetailsState>;
}

/// @nodoc
class _$OrderDetailsStateCopyWithImpl<$Res, $Val extends OrderDetailsState>
    implements $OrderDetailsStateCopyWith<$Res> {
  _$OrderDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsState
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
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrderDetailsState.initial()';
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
    required TResult Function(OrderEntity orderEntity) selected,
    required TResult Function() loading,
    required TResult Function(List<String> terms) termsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity orderEntity)? selected,
    TResult? Function()? loading,
    TResult? Function(List<String> terms)? termsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity orderEntity)? selected,
    TResult Function()? loading,
    TResult Function(List<String> terms)? termsLoaded,
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
    required TResult Function(_Selected value) selected,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TermsLoaded value) termsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TermsLoaded value)? termsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Loading value)? loading,
    TResult Function(_TermsLoaded value)? termsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderEntity orderEntity});

  $OrderEntityCopyWith<$Res> get orderEntity;
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderEntity = null,
  }) {
    return _then(_$SelectedImpl(
      null == orderEntity
          ? _value.orderEntity
          : orderEntity // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get orderEntity {
    return $OrderEntityCopyWith<$Res>(_value.orderEntity, (value) {
      return _then(_value.copyWith(orderEntity: value));
    });
  }
}

/// @nodoc

class _$SelectedImpl implements _Selected {
  const _$SelectedImpl(this.orderEntity);

  @override
  final OrderEntity orderEntity;

  @override
  String toString() {
    return 'OrderDetailsState.selected(orderEntity: $orderEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.orderEntity, orderEntity) ||
                other.orderEntity == orderEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderEntity);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderEntity orderEntity) selected,
    required TResult Function() loading,
    required TResult Function(List<String> terms) termsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return selected(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity orderEntity)? selected,
    TResult? Function()? loading,
    TResult? Function(List<String> terms)? termsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return selected?.call(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity orderEntity)? selected,
    TResult Function()? loading,
    TResult Function(List<String> terms)? termsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(orderEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TermsLoaded value) termsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TermsLoaded value)? termsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Loading value)? loading,
    TResult Function(_TermsLoaded value)? termsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements OrderDetailsState {
  const factory _Selected(final OrderEntity orderEntity) = _$SelectedImpl;

  OrderEntity get orderEntity;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrderDetailsState.loading()';
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
    required TResult Function(OrderEntity orderEntity) selected,
    required TResult Function() loading,
    required TResult Function(List<String> terms) termsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity orderEntity)? selected,
    TResult? Function()? loading,
    TResult? Function(List<String> terms)? termsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity orderEntity)? selected,
    TResult Function()? loading,
    TResult Function(List<String> terms)? termsLoaded,
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
    required TResult Function(_Selected value) selected,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TermsLoaded value) termsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TermsLoaded value)? termsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Loading value)? loading,
    TResult Function(_TermsLoaded value)? termsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderDetailsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$TermsLoadedImplCopyWith<$Res> {
  factory _$$TermsLoadedImplCopyWith(
          _$TermsLoadedImpl value, $Res Function(_$TermsLoadedImpl) then) =
      __$$TermsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> terms});
}

/// @nodoc
class __$$TermsLoadedImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$TermsLoadedImpl>
    implements _$$TermsLoadedImplCopyWith<$Res> {
  __$$TermsLoadedImplCopyWithImpl(
      _$TermsLoadedImpl _value, $Res Function(_$TermsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = null,
  }) {
    return _then(_$TermsLoadedImpl(
      null == terms
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TermsLoadedImpl implements _TermsLoaded {
  const _$TermsLoadedImpl(final List<String> terms) : _terms = terms;

  final List<String> _terms;
  @override
  List<String> get terms {
    if (_terms is EqualUnmodifiableListView) return _terms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_terms);
  }

  @override
  String toString() {
    return 'OrderDetailsState.termsLoaded(terms: $terms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsLoadedImpl &&
            const DeepCollectionEquality().equals(other._terms, _terms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_terms));

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsLoadedImplCopyWith<_$TermsLoadedImpl> get copyWith =>
      __$$TermsLoadedImplCopyWithImpl<_$TermsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderEntity orderEntity) selected,
    required TResult Function() loading,
    required TResult Function(List<String> terms) termsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return termsLoaded(terms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity orderEntity)? selected,
    TResult? Function()? loading,
    TResult? Function(List<String> terms)? termsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return termsLoaded?.call(terms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity orderEntity)? selected,
    TResult Function()? loading,
    TResult Function(List<String> terms)? termsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (termsLoaded != null) {
      return termsLoaded(terms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TermsLoaded value) termsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return termsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TermsLoaded value)? termsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return termsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Loading value)? loading,
    TResult Function(_TermsLoaded value)? termsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (termsLoaded != null) {
      return termsLoaded(this);
    }
    return orElse();
  }
}

abstract class _TermsLoaded implements OrderDetailsState {
  const factory _TermsLoaded(final List<String> terms) = _$TermsLoadedImpl;

  List<String> get terms;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermsLoadedImplCopyWith<_$TermsLoadedImpl> get copyWith =>
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
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
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
    return 'OrderDetailsState.failed(errorMessage: $errorMessage)';
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

  /// Create a copy of OrderDetailsState
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
    required TResult Function(OrderEntity orderEntity) selected,
    required TResult Function() loading,
    required TResult Function(List<String> terms) termsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity orderEntity)? selected,
    TResult? Function()? loading,
    TResult? Function(List<String> terms)? termsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity orderEntity)? selected,
    TResult Function()? loading,
    TResult Function(List<String> terms)? termsLoaded,
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
    required TResult Function(_Selected value) selected,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TermsLoaded value) termsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TermsLoaded value)? termsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Loading value)? loading,
    TResult Function(_TermsLoaded value)? termsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements OrderDetailsState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
