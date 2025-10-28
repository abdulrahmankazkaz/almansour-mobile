// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentCheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int paymentMethodId) checkout,
    required TResult Function(int paymentMethodId) getPaymentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int paymentMethodId)? checkout,
    TResult? Function(int paymentMethodId)? getPaymentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int paymentMethodId)? checkout,
    TResult Function(int paymentMethodId)? getPaymentDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetPaymentDetails value) getPaymentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetPaymentDetails value)? getPaymentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetPaymentDetails value)? getPaymentDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCheckoutEventCopyWith<$Res> {
  factory $AppointmentCheckoutEventCopyWith(AppointmentCheckoutEvent value,
          $Res Function(AppointmentCheckoutEvent) then) =
      _$AppointmentCheckoutEventCopyWithImpl<$Res, AppointmentCheckoutEvent>;
}

/// @nodoc
class _$AppointmentCheckoutEventCopyWithImpl<$Res,
        $Val extends AppointmentCheckoutEvent>
    implements $AppointmentCheckoutEventCopyWith<$Res> {
  _$AppointmentCheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentCheckoutEvent
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
    extends _$AppointmentCheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppointmentCheckoutEvent.started()';
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
    required TResult Function(int paymentMethodId) checkout,
    required TResult Function(int paymentMethodId) getPaymentDetails,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int paymentMethodId)? checkout,
    TResult? Function(int paymentMethodId)? getPaymentDetails,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int paymentMethodId)? checkout,
    TResult Function(int paymentMethodId)? getPaymentDetails,
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
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetPaymentDetails value) getPaymentDetails,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetPaymentDetails value)? getPaymentDetails,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetPaymentDetails value)? getPaymentDetails,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppointmentCheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CheckoutImplCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int paymentMethodId});
}

/// @nodoc
class __$$CheckoutImplCopyWithImpl<$Res>
    extends _$AppointmentCheckoutEventCopyWithImpl<$Res, _$CheckoutImpl>
    implements _$$CheckoutImplCopyWith<$Res> {
  __$$CheckoutImplCopyWithImpl(
      _$CheckoutImpl _value, $Res Function(_$CheckoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodId = null,
  }) {
    return _then(_$CheckoutImpl(
      null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckoutImpl implements _Checkout {
  const _$CheckoutImpl(this.paymentMethodId);

  @override
  final int paymentMethodId;

  @override
  String toString() {
    return 'AppointmentCheckoutEvent.checkout(paymentMethodId: $paymentMethodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutImpl &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodId);

  /// Create a copy of AppointmentCheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      __$$CheckoutImplCopyWithImpl<_$CheckoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int paymentMethodId) checkout,
    required TResult Function(int paymentMethodId) getPaymentDetails,
  }) {
    return checkout(paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int paymentMethodId)? checkout,
    TResult? Function(int paymentMethodId)? getPaymentDetails,
  }) {
    return checkout?.call(paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int paymentMethodId)? checkout,
    TResult Function(int paymentMethodId)? getPaymentDetails,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(paymentMethodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetPaymentDetails value) getPaymentDetails,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetPaymentDetails value)? getPaymentDetails,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetPaymentDetails value)? getPaymentDetails,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class _Checkout implements AppointmentCheckoutEvent {
  const factory _Checkout(final int paymentMethodId) = _$CheckoutImpl;

  int get paymentMethodId;

  /// Create a copy of AppointmentCheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentDetailsImplCopyWith<$Res> {
  factory _$$GetPaymentDetailsImplCopyWith(_$GetPaymentDetailsImpl value,
          $Res Function(_$GetPaymentDetailsImpl) then) =
      __$$GetPaymentDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int paymentMethodId});
}

/// @nodoc
class __$$GetPaymentDetailsImplCopyWithImpl<$Res>
    extends _$AppointmentCheckoutEventCopyWithImpl<$Res,
        _$GetPaymentDetailsImpl>
    implements _$$GetPaymentDetailsImplCopyWith<$Res> {
  __$$GetPaymentDetailsImplCopyWithImpl(_$GetPaymentDetailsImpl _value,
      $Res Function(_$GetPaymentDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodId = null,
  }) {
    return _then(_$GetPaymentDetailsImpl(
      null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPaymentDetailsImpl implements _GetPaymentDetails {
  const _$GetPaymentDetailsImpl(this.paymentMethodId);

  @override
  final int paymentMethodId;

  @override
  String toString() {
    return 'AppointmentCheckoutEvent.getPaymentDetails(paymentMethodId: $paymentMethodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDetailsImpl &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodId);

  /// Create a copy of AppointmentCheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentDetailsImplCopyWith<_$GetPaymentDetailsImpl> get copyWith =>
      __$$GetPaymentDetailsImplCopyWithImpl<_$GetPaymentDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int paymentMethodId) checkout,
    required TResult Function(int paymentMethodId) getPaymentDetails,
  }) {
    return getPaymentDetails(paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int paymentMethodId)? checkout,
    TResult? Function(int paymentMethodId)? getPaymentDetails,
  }) {
    return getPaymentDetails?.call(paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int paymentMethodId)? checkout,
    TResult Function(int paymentMethodId)? getPaymentDetails,
    required TResult orElse(),
  }) {
    if (getPaymentDetails != null) {
      return getPaymentDetails(paymentMethodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetPaymentDetails value) getPaymentDetails,
  }) {
    return getPaymentDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetPaymentDetails value)? getPaymentDetails,
  }) {
    return getPaymentDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetPaymentDetails value)? getPaymentDetails,
    required TResult orElse(),
  }) {
    if (getPaymentDetails != null) {
      return getPaymentDetails(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentDetails implements AppointmentCheckoutEvent {
  const factory _GetPaymentDetails(final int paymentMethodId) =
      _$GetPaymentDetailsImpl;

  int get paymentMethodId;

  /// Create a copy of AppointmentCheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentDetailsImplCopyWith<_$GetPaymentDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentCheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCheckoutStateCopyWith<$Res> {
  factory $AppointmentCheckoutStateCopyWith(AppointmentCheckoutState value,
          $Res Function(AppointmentCheckoutState) then) =
      _$AppointmentCheckoutStateCopyWithImpl<$Res, AppointmentCheckoutState>;
}

/// @nodoc
class _$AppointmentCheckoutStateCopyWithImpl<$Res,
        $Val extends AppointmentCheckoutState>
    implements $AppointmentCheckoutStateCopyWith<$Res> {
  _$AppointmentCheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentCheckoutState
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
    extends _$AppointmentCheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppointmentCheckoutState.initial()';
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
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppointmentCheckoutState {
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
    extends _$AppointmentCheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppointmentCheckoutState.loading()';
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
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppointmentCheckoutState {
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
    extends _$AppointmentCheckoutStateCopyWithImpl<$Res, _$DetailsLoadingImpl>
    implements _$$DetailsLoadingImplCopyWith<$Res> {
  __$$DetailsLoadingImplCopyWithImpl(
      _$DetailsLoadingImpl _value, $Res Function(_$DetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetailsLoadingImpl implements _DetailsLoading {
  const _$DetailsLoadingImpl();

  @override
  String toString() {
    return 'AppointmentCheckoutState.detailsLoading()';
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
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) {
    return detailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) {
    return detailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return detailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return detailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (detailsLoading != null) {
      return detailsLoading(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoading implements AppointmentCheckoutState {
  const factory _DetailsLoading() = _$DetailsLoadingImpl;
}

/// @nodoc
abstract class _$$DetailsLoadedImplCopyWith<$Res> {
  factory _$$DetailsLoadedImplCopyWith(
          _$DetailsLoadedImpl value, $Res Function(_$DetailsLoadedImpl) then) =
      __$$DetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderDetails totals});

  $OrderDetailsCopyWith<$Res> get totals;
}

/// @nodoc
class __$$DetailsLoadedImplCopyWithImpl<$Res>
    extends _$AppointmentCheckoutStateCopyWithImpl<$Res, _$DetailsLoadedImpl>
    implements _$$DetailsLoadedImplCopyWith<$Res> {
  __$$DetailsLoadedImplCopyWithImpl(
      _$DetailsLoadedImpl _value, $Res Function(_$DetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totals = null,
  }) {
    return _then(_$DetailsLoadedImpl(
      null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as OrderDetails,
    ));
  }

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsCopyWith<$Res> get totals {
    return $OrderDetailsCopyWith<$Res>(_value.totals, (value) {
      return _then(_value.copyWith(totals: value));
    });
  }
}

/// @nodoc

class _$DetailsLoadedImpl implements _DetailsLoaded {
  const _$DetailsLoadedImpl(this.totals);

  @override
  final OrderDetails totals;

  @override
  String toString() {
    return 'AppointmentCheckoutState.detailsLoaded(totals: $totals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsLoadedImpl &&
            (identical(other.totals, totals) || other.totals == totals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totals);

  /// Create a copy of AppointmentCheckoutState
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
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) {
    return detailsLoaded(totals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) {
    return detailsLoaded?.call(totals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(totals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return detailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return detailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoaded implements AppointmentCheckoutState {
  const factory _DetailsLoaded(final OrderDetails totals) = _$DetailsLoadedImpl;

  OrderDetails get totals;

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsLoadedImplCopyWith<_$DetailsLoadedImpl> get copyWith =>
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
    extends _$AppointmentCheckoutStateCopyWithImpl<$Res,
        _$InvalidParametersImpl>
    implements _$$InvalidParametersImplCopyWith<$Res> {
  __$$InvalidParametersImplCopyWithImpl(_$InvalidParametersImpl _value,
      $Res Function(_$InvalidParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutState
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
    return 'AppointmentCheckoutState.invalidParameters(validationMessage: $validationMessage)';
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

  /// Create a copy of AppointmentCheckoutState
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
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) {
    return invalidParameters(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) {
    return invalidParameters?.call(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return invalidParameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return invalidParameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(this);
    }
    return orElse();
  }
}

abstract class _InvalidParameters implements AppointmentCheckoutState {
  const factory _InvalidParameters(final String validationMessage) =
      _$InvalidParametersImpl;

  String get validationMessage;

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidParametersImplCopyWith<_$InvalidParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentPayment appointmentPayment});

  $AppointmentPaymentCopyWith<$Res> get appointmentPayment;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AppointmentCheckoutStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentPayment = null,
  }) {
    return _then(_$SuccessImpl(
      null == appointmentPayment
          ? _value.appointmentPayment
          : appointmentPayment // ignore: cast_nullable_to_non_nullable
              as AppointmentPayment,
    ));
  }

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentPaymentCopyWith<$Res> get appointmentPayment {
    return $AppointmentPaymentCopyWith<$Res>(_value.appointmentPayment,
        (value) {
      return _then(_value.copyWith(appointmentPayment: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.appointmentPayment);

  @override
  final AppointmentPayment appointmentPayment;

  @override
  String toString() {
    return 'AppointmentCheckoutState.success(appointmentPayment: $appointmentPayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.appointmentPayment, appointmentPayment) ||
                other.appointmentPayment == appointmentPayment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentPayment);

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() detailsLoading,
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) {
    return success(appointmentPayment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) {
    return success?.call(appointmentPayment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(appointmentPayment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AppointmentCheckoutState {
  const factory _Success(final AppointmentPayment appointmentPayment) =
      _$SuccessImpl;

  AppointmentPayment get appointmentPayment;

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failedMessage});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AppointmentCheckoutStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedMessage = null,
  }) {
    return _then(_$FailedImpl(
      null == failedMessage
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.failedMessage);

  @override
  final String failedMessage;

  @override
  String toString() {
    return 'AppointmentCheckoutState.failed(failedMessage: $failedMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.failedMessage, failedMessage) ||
                other.failedMessage == failedMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedMessage);

  /// Create a copy of AppointmentCheckoutState
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
    required TResult Function(OrderDetails totals) detailsLoaded,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(AppointmentPayment appointmentPayment) success,
    required TResult Function(String failedMessage) failed,
  }) {
    return failed(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? detailsLoading,
    TResult? Function(OrderDetails totals)? detailsLoaded,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(AppointmentPayment appointmentPayment)? success,
    TResult? Function(String failedMessage)? failed,
  }) {
    return failed?.call(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? detailsLoading,
    TResult Function(OrderDetails totals)? detailsLoaded,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(AppointmentPayment appointmentPayment)? success,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailsLoading value) detailsLoading,
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailsLoading value)? detailsLoading,
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailsLoading value)? detailsLoading,
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AppointmentCheckoutState {
  const factory _Failed(final String failedMessage) = _$FailedImpl;

  String get failedMessage;

  /// Create a copy of AppointmentCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
