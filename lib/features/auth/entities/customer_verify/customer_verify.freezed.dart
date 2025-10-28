// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerVerify _$CustomerVerifyFromJson(Map<String, dynamic> json) {
  return _CustomerVerify.fromJson(json);
}

/// @nodoc
mixin _$CustomerVerify {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  BasicModel get status => throw _privateConstructorUsedError;

  /// Serializes this CustomerVerify to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerVerifyCopyWith<CustomerVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerVerifyCopyWith<$Res> {
  factory $CustomerVerifyCopyWith(
          CustomerVerify value, $Res Function(CustomerVerify) then) =
      _$CustomerVerifyCopyWithImpl<$Res, CustomerVerify>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'mobile') String? mobileNumber,
      @JsonKey(name: 'status') BasicModel status});

  $BasicModelCopyWith<$Res> get status;
}

/// @nodoc
class _$CustomerVerifyCopyWithImpl<$Res, $Val extends CustomerVerify>
    implements $CustomerVerifyCopyWith<$Res> {
  _$CustomerVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobileNumber = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
    ) as $Val);
  }

  /// Create a copy of CustomerVerify
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get status {
    return $BasicModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerVerifyImplCopyWith<$Res>
    implements $CustomerVerifyCopyWith<$Res> {
  factory _$$CustomerVerifyImplCopyWith(_$CustomerVerifyImpl value,
          $Res Function(_$CustomerVerifyImpl) then) =
      __$$CustomerVerifyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'mobile') String? mobileNumber,
      @JsonKey(name: 'status') BasicModel status});

  @override
  $BasicModelCopyWith<$Res> get status;
}

/// @nodoc
class __$$CustomerVerifyImplCopyWithImpl<$Res>
    extends _$CustomerVerifyCopyWithImpl<$Res, _$CustomerVerifyImpl>
    implements _$$CustomerVerifyImplCopyWith<$Res> {
  __$$CustomerVerifyImplCopyWithImpl(
      _$CustomerVerifyImpl _value, $Res Function(_$CustomerVerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobileNumber = freezed,
    Object? status = null,
  }) {
    return _then(_$CustomerVerifyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerVerifyImpl implements _CustomerVerify {
  const _$CustomerVerifyImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'mobile') this.mobileNumber,
      @JsonKey(name: 'status') required this.status});

  factory _$CustomerVerifyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerVerifyImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'mobile')
  final String? mobileNumber;
  @override
  @JsonKey(name: 'status')
  final BasicModel status;

  @override
  String toString() {
    return 'CustomerVerify(id: $id, mobileNumber: $mobileNumber, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerVerifyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, mobileNumber, status);

  /// Create a copy of CustomerVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerVerifyImplCopyWith<_$CustomerVerifyImpl> get copyWith =>
      __$$CustomerVerifyImplCopyWithImpl<_$CustomerVerifyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerVerifyImplToJson(
      this,
    );
  }
}

abstract class _CustomerVerify implements CustomerVerify {
  const factory _CustomerVerify(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'mobile') final String? mobileNumber,
          @JsonKey(name: 'status') required final BasicModel status}) =
      _$CustomerVerifyImpl;

  factory _CustomerVerify.fromJson(Map<String, dynamic> json) =
      _$CustomerVerifyImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'mobile')
  String? get mobileNumber;
  @override
  @JsonKey(name: 'status')
  BasicModel get status;

  /// Create a copy of CustomerVerify
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerVerifyImplCopyWith<_$CustomerVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
