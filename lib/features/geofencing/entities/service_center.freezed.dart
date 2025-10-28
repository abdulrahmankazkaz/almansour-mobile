// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceCenter _$ServiceCenterFromJson(Map<String, dynamic> json) {
  return _ServiceCenter.fromJson(json);
}

/// @nodoc
mixin _$ServiceCenter {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  String? get lat => throw _privateConstructorUsedError;

  /// Serializes this ServiceCenter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCenterCopyWith<ServiceCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCenterCopyWith<$Res> {
  factory $ServiceCenterCopyWith(
          ServiceCenter value, $Res Function(ServiceCenter) then) =
      _$ServiceCenterCopyWithImpl<$Res, ServiceCenter>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'longitude') String? lng,
      @JsonKey(name: 'latitude') String? lat});
}

/// @nodoc
class _$ServiceCenterCopyWithImpl<$Res, $Val extends ServiceCenter>
    implements $ServiceCenterCopyWith<$Res> {
  _$ServiceCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? lng = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceCenterImplCopyWith<$Res>
    implements $ServiceCenterCopyWith<$Res> {
  factory _$$ServiceCenterImplCopyWith(
          _$ServiceCenterImpl value, $Res Function(_$ServiceCenterImpl) then) =
      __$$ServiceCenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'longitude') String? lng,
      @JsonKey(name: 'latitude') String? lat});
}

/// @nodoc
class __$$ServiceCenterImplCopyWithImpl<$Res>
    extends _$ServiceCenterCopyWithImpl<$Res, _$ServiceCenterImpl>
    implements _$$ServiceCenterImplCopyWith<$Res> {
  __$$ServiceCenterImplCopyWithImpl(
      _$ServiceCenterImpl _value, $Res Function(_$ServiceCenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? lng = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$ServiceCenterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceCenterImpl extends _ServiceCenter {
  const _$ServiceCenterImpl(
      {this.id = -1,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'longitude') this.lng,
      @JsonKey(name: 'latitude') this.lat})
      : super._();

  factory _$ServiceCenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceCenterImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'longitude')
  final String? lng;
  @override
  @JsonKey(name: 'latitude')
  final String? lat;

  @override
  String toString() {
    return 'ServiceCenter(id: $id, name: $name, lng: $lng, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCenterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lng, lat);

  /// Create a copy of ServiceCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCenterImplCopyWith<_$ServiceCenterImpl> get copyWith =>
      __$$ServiceCenterImplCopyWithImpl<_$ServiceCenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceCenterImplToJson(
      this,
    );
  }
}

abstract class _ServiceCenter extends ServiceCenter {
  const factory _ServiceCenter(
      {final int id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'longitude') final String? lng,
      @JsonKey(name: 'latitude') final String? lat}) = _$ServiceCenterImpl;
  const _ServiceCenter._() : super._();

  factory _ServiceCenter.fromJson(Map<String, dynamic> json) =
      _$ServiceCenterImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'longitude')
  String? get lng;
  @override
  @JsonKey(name: 'latitude')
  String? get lat;

  /// Create a copy of ServiceCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceCenterImplCopyWith<_$ServiceCenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
