// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerCar _$CustomerCarFromJson(Map<String, dynamic> json) {
  return _CustomerCar.fromJson(json);
}

/// @nodoc
mixin _$CustomerCar {
  int get id => throw _privateConstructorUsedError;
  BasicModel get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'vin_number')
  String get vinNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_from_mac')
  bool get isFromMac => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_reason')
  String get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  String get yearOfModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'odometer')
  int get odometer => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_expire')
  String get licenseExpired => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_image')
  String get licenseImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_details')
  CarDetails get carDetails => throw _privateConstructorUsedError;

  /// Serializes this CustomerCar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerCar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCarCopyWith<CustomerCar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCarCopyWith<$Res> {
  factory $CustomerCarCopyWith(
          CustomerCar value, $Res Function(CustomerCar) then) =
      _$CustomerCarCopyWithImpl<$Res, CustomerCar>;
  @useResult
  $Res call(
      {int id,
      BasicModel status,
      @JsonKey(name: 'vin_number') String vinNumber,
      @JsonKey(name: 'is_from_mac') bool isFromMac,
      @JsonKey(name: 'reject_reason') String rejectReason,
      @JsonKey(name: 'year') String yearOfModel,
      @JsonKey(name: 'odometer') int odometer,
      @JsonKey(name: 'license_expire') String licenseExpired,
      @JsonKey(name: 'license_image') String licenseImage,
      @JsonKey(name: 'car_details') CarDetails carDetails});

  $BasicModelCopyWith<$Res> get status;
  $CarDetailsCopyWith<$Res> get carDetails;
}

/// @nodoc
class _$CustomerCarCopyWithImpl<$Res, $Val extends CustomerCar>
    implements $CustomerCarCopyWith<$Res> {
  _$CustomerCarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerCar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? vinNumber = null,
    Object? isFromMac = null,
    Object? rejectReason = null,
    Object? yearOfModel = null,
    Object? odometer = null,
    Object? licenseExpired = null,
    Object? licenseImage = null,
    Object? carDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      vinNumber: null == vinNumber
          ? _value.vinNumber
          : vinNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isFromMac: null == isFromMac
          ? _value.isFromMac
          : isFromMac // ignore: cast_nullable_to_non_nullable
              as bool,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      yearOfModel: null == yearOfModel
          ? _value.yearOfModel
          : yearOfModel // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      licenseExpired: null == licenseExpired
          ? _value.licenseExpired
          : licenseExpired // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImage: null == licenseImage
          ? _value.licenseImage
          : licenseImage // ignore: cast_nullable_to_non_nullable
              as String,
      carDetails: null == carDetails
          ? _value.carDetails
          : carDetails // ignore: cast_nullable_to_non_nullable
              as CarDetails,
    ) as $Val);
  }

  /// Create a copy of CustomerCar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get status {
    return $BasicModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of CustomerCar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarDetailsCopyWith<$Res> get carDetails {
    return $CarDetailsCopyWith<$Res>(_value.carDetails, (value) {
      return _then(_value.copyWith(carDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerCarImplCopyWith<$Res>
    implements $CustomerCarCopyWith<$Res> {
  factory _$$CustomerCarImplCopyWith(
          _$CustomerCarImpl value, $Res Function(_$CustomerCarImpl) then) =
      __$$CustomerCarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      BasicModel status,
      @JsonKey(name: 'vin_number') String vinNumber,
      @JsonKey(name: 'is_from_mac') bool isFromMac,
      @JsonKey(name: 'reject_reason') String rejectReason,
      @JsonKey(name: 'year') String yearOfModel,
      @JsonKey(name: 'odometer') int odometer,
      @JsonKey(name: 'license_expire') String licenseExpired,
      @JsonKey(name: 'license_image') String licenseImage,
      @JsonKey(name: 'car_details') CarDetails carDetails});

  @override
  $BasicModelCopyWith<$Res> get status;
  @override
  $CarDetailsCopyWith<$Res> get carDetails;
}

/// @nodoc
class __$$CustomerCarImplCopyWithImpl<$Res>
    extends _$CustomerCarCopyWithImpl<$Res, _$CustomerCarImpl>
    implements _$$CustomerCarImplCopyWith<$Res> {
  __$$CustomerCarImplCopyWithImpl(
      _$CustomerCarImpl _value, $Res Function(_$CustomerCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerCar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? vinNumber = null,
    Object? isFromMac = null,
    Object? rejectReason = null,
    Object? yearOfModel = null,
    Object? odometer = null,
    Object? licenseExpired = null,
    Object? licenseImage = null,
    Object? carDetails = null,
  }) {
    return _then(_$CustomerCarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      vinNumber: null == vinNumber
          ? _value.vinNumber
          : vinNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isFromMac: null == isFromMac
          ? _value.isFromMac
          : isFromMac // ignore: cast_nullable_to_non_nullable
              as bool,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      yearOfModel: null == yearOfModel
          ? _value.yearOfModel
          : yearOfModel // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      licenseExpired: null == licenseExpired
          ? _value.licenseExpired
          : licenseExpired // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImage: null == licenseImage
          ? _value.licenseImage
          : licenseImage // ignore: cast_nullable_to_non_nullable
              as String,
      carDetails: null == carDetails
          ? _value.carDetails
          : carDetails // ignore: cast_nullable_to_non_nullable
              as CarDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerCarImpl implements _CustomerCar {
  const _$CustomerCarImpl(
      {required this.id,
      required this.status,
      @JsonKey(name: 'vin_number') required this.vinNumber,
      @JsonKey(name: 'is_from_mac') required this.isFromMac,
      @JsonKey(name: 'reject_reason') this.rejectReason = '',
      @JsonKey(name: 'year') required this.yearOfModel,
      @JsonKey(name: 'odometer') required this.odometer,
      @JsonKey(name: 'license_expire') this.licenseExpired = '',
      @JsonKey(name: 'license_image') this.licenseImage = '',
      @JsonKey(name: 'car_details') required this.carDetails});

  factory _$CustomerCarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerCarImplFromJson(json);

  @override
  final int id;
  @override
  final BasicModel status;
  @override
  @JsonKey(name: 'vin_number')
  final String vinNumber;
  @override
  @JsonKey(name: 'is_from_mac')
  final bool isFromMac;
  @override
  @JsonKey(name: 'reject_reason')
  final String rejectReason;
  @override
  @JsonKey(name: 'year')
  final String yearOfModel;
  @override
  @JsonKey(name: 'odometer')
  final int odometer;
  @override
  @JsonKey(name: 'license_expire')
  final String licenseExpired;
  @override
  @JsonKey(name: 'license_image')
  final String licenseImage;
  @override
  @JsonKey(name: 'car_details')
  final CarDetails carDetails;

  @override
  String toString() {
    return 'CustomerCar(id: $id, status: $status, vinNumber: $vinNumber, isFromMac: $isFromMac, rejectReason: $rejectReason, yearOfModel: $yearOfModel, odometer: $odometer, licenseExpired: $licenseExpired, licenseImage: $licenseImage, carDetails: $carDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vinNumber, vinNumber) ||
                other.vinNumber == vinNumber) &&
            (identical(other.isFromMac, isFromMac) ||
                other.isFromMac == isFromMac) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.yearOfModel, yearOfModel) ||
                other.yearOfModel == yearOfModel) &&
            (identical(other.odometer, odometer) ||
                other.odometer == odometer) &&
            (identical(other.licenseExpired, licenseExpired) ||
                other.licenseExpired == licenseExpired) &&
            (identical(other.licenseImage, licenseImage) ||
                other.licenseImage == licenseImage) &&
            (identical(other.carDetails, carDetails) ||
                other.carDetails == carDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      vinNumber,
      isFromMac,
      rejectReason,
      yearOfModel,
      odometer,
      licenseExpired,
      licenseImage,
      carDetails);

  /// Create a copy of CustomerCar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCarImplCopyWith<_$CustomerCarImpl> get copyWith =>
      __$$CustomerCarImplCopyWithImpl<_$CustomerCarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerCarImplToJson(
      this,
    );
  }
}

abstract class _CustomerCar implements CustomerCar {
  const factory _CustomerCar(
          {required final int id,
          required final BasicModel status,
          @JsonKey(name: 'vin_number') required final String vinNumber,
          @JsonKey(name: 'is_from_mac') required final bool isFromMac,
          @JsonKey(name: 'reject_reason') final String rejectReason,
          @JsonKey(name: 'year') required final String yearOfModel,
          @JsonKey(name: 'odometer') required final int odometer,
          @JsonKey(name: 'license_expire') final String licenseExpired,
          @JsonKey(name: 'license_image') final String licenseImage,
          @JsonKey(name: 'car_details') required final CarDetails carDetails}) =
      _$CustomerCarImpl;

  factory _CustomerCar.fromJson(Map<String, dynamic> json) =
      _$CustomerCarImpl.fromJson;

  @override
  int get id;
  @override
  BasicModel get status;
  @override
  @JsonKey(name: 'vin_number')
  String get vinNumber;
  @override
  @JsonKey(name: 'is_from_mac')
  bool get isFromMac;
  @override
  @JsonKey(name: 'reject_reason')
  String get rejectReason;
  @override
  @JsonKey(name: 'year')
  String get yearOfModel;
  @override
  @JsonKey(name: 'odometer')
  int get odometer;
  @override
  @JsonKey(name: 'license_expire')
  String get licenseExpired;
  @override
  @JsonKey(name: 'license_image')
  String get licenseImage;
  @override
  @JsonKey(name: 'car_details')
  CarDetails get carDetails;

  /// Create a copy of CustomerCar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerCarImplCopyWith<_$CustomerCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
