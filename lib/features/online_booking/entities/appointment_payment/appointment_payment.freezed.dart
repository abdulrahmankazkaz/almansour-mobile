// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentPayment _$AppointmentPaymentFromJson(Map<String, dynamic> json) {
  return _AppointmentPayment.fromJson(json);
}

/// @nodoc
mixin _$AppointmentPayment {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'totals')
  OrderDetailsTotal get paymentTotals => throw _privateConstructorUsedError;

  /// Serializes this AppointmentPayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentPaymentCopyWith<AppointmentPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentPaymentCopyWith<$Res> {
  factory $AppointmentPaymentCopyWith(
          AppointmentPayment value, $Res Function(AppointmentPayment) then) =
      _$AppointmentPaymentCopyWithImpl<$Res, AppointmentPayment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'totals') OrderDetailsTotal paymentTotals});

  $OrderDetailsTotalCopyWith<$Res> get paymentTotals;
}

/// @nodoc
class _$AppointmentPaymentCopyWithImpl<$Res, $Val extends AppointmentPayment>
    implements $AppointmentPaymentCopyWith<$Res> {
  _$AppointmentPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? paymentTotals = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTotals: null == paymentTotals
          ? _value.paymentTotals
          : paymentTotals // ignore: cast_nullable_to_non_nullable
              as OrderDetailsTotal,
    ) as $Val);
  }

  /// Create a copy of AppointmentPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsTotalCopyWith<$Res> get paymentTotals {
    return $OrderDetailsTotalCopyWith<$Res>(_value.paymentTotals, (value) {
      return _then(_value.copyWith(paymentTotals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentPaymentImplCopyWith<$Res>
    implements $AppointmentPaymentCopyWith<$Res> {
  factory _$$AppointmentPaymentImplCopyWith(_$AppointmentPaymentImpl value,
          $Res Function(_$AppointmentPaymentImpl) then) =
      __$$AppointmentPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'totals') OrderDetailsTotal paymentTotals});

  @override
  $OrderDetailsTotalCopyWith<$Res> get paymentTotals;
}

/// @nodoc
class __$$AppointmentPaymentImplCopyWithImpl<$Res>
    extends _$AppointmentPaymentCopyWithImpl<$Res, _$AppointmentPaymentImpl>
    implements _$$AppointmentPaymentImplCopyWith<$Res> {
  __$$AppointmentPaymentImplCopyWithImpl(_$AppointmentPaymentImpl _value,
      $Res Function(_$AppointmentPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? paymentTotals = null,
  }) {
    return _then(_$AppointmentPaymentImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTotals: null == paymentTotals
          ? _value.paymentTotals
          : paymentTotals // ignore: cast_nullable_to_non_nullable
              as OrderDetailsTotal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentPaymentImpl extends _AppointmentPayment {
  const _$AppointmentPaymentImpl(
      {@JsonKey(name: 'url') this.url,
      @JsonKey(name: 'totals') required this.paymentTotals})
      : super._();

  factory _$AppointmentPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentPaymentImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'totals')
  final OrderDetailsTotal paymentTotals;

  @override
  String toString() {
    return 'AppointmentPayment(url: $url, paymentTotals: $paymentTotals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentPaymentImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.paymentTotals, paymentTotals) ||
                other.paymentTotals == paymentTotals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, paymentTotals);

  /// Create a copy of AppointmentPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentPaymentImplCopyWith<_$AppointmentPaymentImpl> get copyWith =>
      __$$AppointmentPaymentImplCopyWithImpl<_$AppointmentPaymentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentPaymentImplToJson(
      this,
    );
  }
}

abstract class _AppointmentPayment extends AppointmentPayment {
  const factory _AppointmentPayment(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'totals')
          required final OrderDetailsTotal paymentTotals}) =
      _$AppointmentPaymentImpl;
  const _AppointmentPayment._() : super._();

  factory _AppointmentPayment.fromJson(Map<String, dynamic> json) =
      _$AppointmentPaymentImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'totals')
  OrderDetailsTotal get paymentTotals;

  /// Create a copy of AppointmentPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentPaymentImplCopyWith<_$AppointmentPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
