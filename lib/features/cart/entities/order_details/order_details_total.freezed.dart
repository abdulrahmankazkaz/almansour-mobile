// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_total.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsTotal _$OrderDetailsTotalFromJson(Map<String, dynamic> json) {
  return _OrderDetailsTotal.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsTotal {
  @JsonKey(name: 'total_amount')
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery')
  double get delivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal')
  double get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_discount')
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  int get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  double get tax => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsTotal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsTotal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsTotalCopyWith<OrderDetailsTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsTotalCopyWith<$Res> {
  factory $OrderDetailsTotalCopyWith(
          OrderDetailsTotal value, $Res Function(OrderDetailsTotal) then) =
      _$OrderDetailsTotalCopyWithImpl<$Res, OrderDetailsTotal>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_amount') double total,
      @JsonKey(name: 'delivery') double delivery,
      @JsonKey(name: 'subtotal') double subtotal,
      @JsonKey(name: 'total_discount') double discount,
      @JsonKey(name: 'discount') int discountPercentage,
      @JsonKey(name: 'tax') double tax});
}

/// @nodoc
class _$OrderDetailsTotalCopyWithImpl<$Res, $Val extends OrderDetailsTotal>
    implements $OrderDetailsTotalCopyWith<$Res> {
  _$OrderDetailsTotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsTotal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? delivery = null,
    Object? subtotal = null,
    Object? discount = null,
    Object? discountPercentage = null,
    Object? tax = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsTotalImplCopyWith<$Res>
    implements $OrderDetailsTotalCopyWith<$Res> {
  factory _$$OrderDetailsTotalImplCopyWith(_$OrderDetailsTotalImpl value,
          $Res Function(_$OrderDetailsTotalImpl) then) =
      __$$OrderDetailsTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_amount') double total,
      @JsonKey(name: 'delivery') double delivery,
      @JsonKey(name: 'subtotal') double subtotal,
      @JsonKey(name: 'total_discount') double discount,
      @JsonKey(name: 'discount') int discountPercentage,
      @JsonKey(name: 'tax') double tax});
}

/// @nodoc
class __$$OrderDetailsTotalImplCopyWithImpl<$Res>
    extends _$OrderDetailsTotalCopyWithImpl<$Res, _$OrderDetailsTotalImpl>
    implements _$$OrderDetailsTotalImplCopyWith<$Res> {
  __$$OrderDetailsTotalImplCopyWithImpl(_$OrderDetailsTotalImpl _value,
      $Res Function(_$OrderDetailsTotalImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsTotal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? delivery = null,
    Object? subtotal = null,
    Object? discount = null,
    Object? discountPercentage = null,
    Object? tax = null,
  }) {
    return _then(_$OrderDetailsTotalImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsTotalImpl implements _OrderDetailsTotal {
  const _$OrderDetailsTotalImpl(
      {@JsonKey(name: 'total_amount') required this.total,
      @JsonKey(name: 'delivery') this.delivery = 0,
      @JsonKey(name: 'subtotal') required this.subtotal,
      @JsonKey(name: 'total_discount') this.discount = 0,
      @JsonKey(name: 'discount') this.discountPercentage = 0,
      @JsonKey(name: 'tax') this.tax = 0});

  factory _$OrderDetailsTotalImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsTotalImplFromJson(json);

  @override
  @JsonKey(name: 'total_amount')
  final double total;
  @override
  @JsonKey(name: 'delivery')
  final double delivery;
  @override
  @JsonKey(name: 'subtotal')
  final double subtotal;
  @override
  @JsonKey(name: 'total_discount')
  final double discount;
  @override
  @JsonKey(name: 'discount')
  final int discountPercentage;
  @override
  @JsonKey(name: 'tax')
  final double tax;

  @override
  String toString() {
    return 'OrderDetailsTotal(total: $total, delivery: $delivery, subtotal: $subtotal, discount: $discount, discountPercentage: $discountPercentage, tax: $tax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsTotalImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, delivery, subtotal,
      discount, discountPercentage, tax);

  /// Create a copy of OrderDetailsTotal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsTotalImplCopyWith<_$OrderDetailsTotalImpl> get copyWith =>
      __$$OrderDetailsTotalImplCopyWithImpl<_$OrderDetailsTotalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsTotalImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsTotal implements OrderDetailsTotal {
  const factory _OrderDetailsTotal(
      {@JsonKey(name: 'total_amount') required final double total,
      @JsonKey(name: 'delivery') final double delivery,
      @JsonKey(name: 'subtotal') required final double subtotal,
      @JsonKey(name: 'total_discount') final double discount,
      @JsonKey(name: 'discount') final int discountPercentage,
      @JsonKey(name: 'tax') final double tax}) = _$OrderDetailsTotalImpl;

  factory _OrderDetailsTotal.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsTotalImpl.fromJson;

  @override
  @JsonKey(name: 'total_amount')
  double get total;
  @override
  @JsonKey(name: 'delivery')
  double get delivery;
  @override
  @JsonKey(name: 'subtotal')
  double get subtotal;
  @override
  @JsonKey(name: 'total_discount')
  double get discount;
  @override
  @JsonKey(name: 'discount')
  int get discountPercentage;
  @override
  @JsonKey(name: 'tax')
  double get tax;

  /// Create a copy of OrderDetailsTotal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsTotalImplCopyWith<_$OrderDetailsTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
