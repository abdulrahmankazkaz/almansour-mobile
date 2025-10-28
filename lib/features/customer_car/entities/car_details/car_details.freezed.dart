// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarDetails _$CarDetailsFromJson(Map<String, dynamic> json) {
  return _CarDetails.fromJson(json);
}

/// @nodoc
mixin _$CarDetails {
  CarBrand get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_name')
  CarName get carName => throw _privateConstructorUsedError;

  /// Serializes this CarDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarDetailsCopyWith<CarDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarDetailsCopyWith<$Res> {
  factory $CarDetailsCopyWith(
          CarDetails value, $Res Function(CarDetails) then) =
      _$CarDetailsCopyWithImpl<$Res, CarDetails>;
  @useResult
  $Res call({CarBrand brand, @JsonKey(name: 'car_name') CarName carName});

  $CarBrandCopyWith<$Res> get brand;
  $CarNameCopyWith<$Res> get carName;
}

/// @nodoc
class _$CarDetailsCopyWithImpl<$Res, $Val extends CarDetails>
    implements $CarDetailsCopyWith<$Res> {
  _$CarDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? carName = null,
  }) {
    return _then(_value.copyWith(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CarBrand,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as CarName,
    ) as $Val);
  }

  /// Create a copy of CarDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarBrandCopyWith<$Res> get brand {
    return $CarBrandCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  /// Create a copy of CarDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarNameCopyWith<$Res> get carName {
    return $CarNameCopyWith<$Res>(_value.carName, (value) {
      return _then(_value.copyWith(carName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarDetailsImplCopyWith<$Res>
    implements $CarDetailsCopyWith<$Res> {
  factory _$$CarDetailsImplCopyWith(
          _$CarDetailsImpl value, $Res Function(_$CarDetailsImpl) then) =
      __$$CarDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CarBrand brand, @JsonKey(name: 'car_name') CarName carName});

  @override
  $CarBrandCopyWith<$Res> get brand;
  @override
  $CarNameCopyWith<$Res> get carName;
}

/// @nodoc
class __$$CarDetailsImplCopyWithImpl<$Res>
    extends _$CarDetailsCopyWithImpl<$Res, _$CarDetailsImpl>
    implements _$$CarDetailsImplCopyWith<$Res> {
  __$$CarDetailsImplCopyWithImpl(
      _$CarDetailsImpl _value, $Res Function(_$CarDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? carName = null,
  }) {
    return _then(_$CarDetailsImpl(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CarBrand,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as CarName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarDetailsImpl implements _CarDetails {
  const _$CarDetailsImpl(
      {required this.brand, @JsonKey(name: 'car_name') required this.carName});

  factory _$CarDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarDetailsImplFromJson(json);

  @override
  final CarBrand brand;
  @override
  @JsonKey(name: 'car_name')
  final CarName carName;

  @override
  String toString() {
    return 'CarDetails(brand: $brand, carName: $carName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarDetailsImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.carName, carName) || other.carName == carName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brand, carName);

  /// Create a copy of CarDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarDetailsImplCopyWith<_$CarDetailsImpl> get copyWith =>
      __$$CarDetailsImplCopyWithImpl<_$CarDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarDetailsImplToJson(
      this,
    );
  }
}

abstract class _CarDetails implements CarDetails {
  const factory _CarDetails(
          {required final CarBrand brand,
          @JsonKey(name: 'car_name') required final CarName carName}) =
      _$CarDetailsImpl;

  factory _CarDetails.fromJson(Map<String, dynamic> json) =
      _$CarDetailsImpl.fromJson;

  @override
  CarBrand get brand;
  @override
  @JsonKey(name: 'car_name')
  CarName get carName;

  /// Create a copy of CarDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarDetailsImplCopyWith<_$CarDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
