// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'installment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Installment _$InstallmentFromJson(Map<String, dynamic> json) {
  return _Installment.fromJson(json);
}

/// @nodoc
mixin _$Installment {
  Car get car => throw _privateConstructorUsedError;
  List<ImageWithColor> get secondaryImage => throw _privateConstructorUsedError;
  String get carName => throw _privateConstructorUsedError;
  String get brandImage => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get downPayment => throw _privateConstructorUsedError;
  double? get restPayPerMonth => throw _privateConstructorUsedError;

  /// Serializes this Installment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstallmentCopyWith<Installment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallmentCopyWith<$Res> {
  factory $InstallmentCopyWith(
          Installment value, $Res Function(Installment) then) =
      _$InstallmentCopyWithImpl<$Res, Installment>;
  @useResult
  $Res call(
      {Car car,
      List<ImageWithColor> secondaryImage,
      String carName,
      String brandImage,
      double price,
      double? downPayment,
      double? restPayPerMonth});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$InstallmentCopyWithImpl<$Res, $Val extends Installment>
    implements $InstallmentCopyWith<$Res> {
  _$InstallmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? secondaryImage = null,
    Object? carName = null,
    Object? brandImage = null,
    Object? price = null,
    Object? downPayment = freezed,
    Object? restPayPerMonth = freezed,
  }) {
    return _then(_value.copyWith(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      secondaryImage: null == secondaryImage
          ? _value.secondaryImage
          : secondaryImage // ignore: cast_nullable_to_non_nullable
              as List<ImageWithColor>,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      downPayment: freezed == downPayment
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as double?,
      restPayPerMonth: freezed == restPayPerMonth
          ? _value.restPayPerMonth
          : restPayPerMonth // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InstallmentImplCopyWith<$Res>
    implements $InstallmentCopyWith<$Res> {
  factory _$$InstallmentImplCopyWith(
          _$InstallmentImpl value, $Res Function(_$InstallmentImpl) then) =
      __$$InstallmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Car car,
      List<ImageWithColor> secondaryImage,
      String carName,
      String brandImage,
      double price,
      double? downPayment,
      double? restPayPerMonth});

  @override
  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$InstallmentImplCopyWithImpl<$Res>
    extends _$InstallmentCopyWithImpl<$Res, _$InstallmentImpl>
    implements _$$InstallmentImplCopyWith<$Res> {
  __$$InstallmentImplCopyWithImpl(
      _$InstallmentImpl _value, $Res Function(_$InstallmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? secondaryImage = null,
    Object? carName = null,
    Object? brandImage = null,
    Object? price = null,
    Object? downPayment = freezed,
    Object? restPayPerMonth = freezed,
  }) {
    return _then(_$InstallmentImpl(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      secondaryImage: null == secondaryImage
          ? _value._secondaryImage
          : secondaryImage // ignore: cast_nullable_to_non_nullable
              as List<ImageWithColor>,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      downPayment: freezed == downPayment
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as double?,
      restPayPerMonth: freezed == restPayPerMonth
          ? _value.restPayPerMonth
          : restPayPerMonth // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstallmentImpl implements _Installment {
  const _$InstallmentImpl(
      {required this.car,
      required final List<ImageWithColor> secondaryImage,
      required this.carName,
      required this.brandImage,
      required this.price,
      this.downPayment,
      this.restPayPerMonth})
      : _secondaryImage = secondaryImage;

  factory _$InstallmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstallmentImplFromJson(json);

  @override
  final Car car;
  final List<ImageWithColor> _secondaryImage;
  @override
  List<ImageWithColor> get secondaryImage {
    if (_secondaryImage is EqualUnmodifiableListView) return _secondaryImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondaryImage);
  }

  @override
  final String carName;
  @override
  final String brandImage;
  @override
  final double price;
  @override
  final double? downPayment;
  @override
  final double? restPayPerMonth;

  @override
  String toString() {
    return 'Installment(car: $car, secondaryImage: $secondaryImage, carName: $carName, brandImage: $brandImage, price: $price, downPayment: $downPayment, restPayPerMonth: $restPayPerMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstallmentImpl &&
            (identical(other.car, car) || other.car == car) &&
            const DeepCollectionEquality()
                .equals(other._secondaryImage, _secondaryImage) &&
            (identical(other.carName, carName) || other.carName == carName) &&
            (identical(other.brandImage, brandImage) ||
                other.brandImage == brandImage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.downPayment, downPayment) ||
                other.downPayment == downPayment) &&
            (identical(other.restPayPerMonth, restPayPerMonth) ||
                other.restPayPerMonth == restPayPerMonth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      car,
      const DeepCollectionEquality().hash(_secondaryImage),
      carName,
      brandImage,
      price,
      downPayment,
      restPayPerMonth);

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstallmentImplCopyWith<_$InstallmentImpl> get copyWith =>
      __$$InstallmentImplCopyWithImpl<_$InstallmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstallmentImplToJson(
      this,
    );
  }
}

abstract class _Installment implements Installment {
  const factory _Installment(
      {required final Car car,
      required final List<ImageWithColor> secondaryImage,
      required final String carName,
      required final String brandImage,
      required final double price,
      final double? downPayment,
      final double? restPayPerMonth}) = _$InstallmentImpl;

  factory _Installment.fromJson(Map<String, dynamic> json) =
      _$InstallmentImpl.fromJson;

  @override
  Car get car;
  @override
  List<ImageWithColor> get secondaryImage;
  @override
  String get carName;
  @override
  String get brandImage;
  @override
  double get price;
  @override
  double? get downPayment;
  @override
  double? get restPayPerMonth;

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstallmentImplCopyWith<_$InstallmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
