// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dealership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dealership _$DealershipFromJson(Map<String, dynamic> json) {
  return _Dealership.fromJson(json);
}

/// @nodoc
mixin _$Dealership {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  BasicModel? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  String? get lat => throw _privateConstructorUsedError;

  /// Serializes this Dealership to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dealership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealershipCopyWith<Dealership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealershipCopyWith<$Res> {
  factory $DealershipCopyWith(
          Dealership value, $Res Function(Dealership) then) =
      _$DealershipCopyWithImpl<$Res, Dealership>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'type') BasicModel? type,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'longitude') String? lng,
      @JsonKey(name: 'latitude') String? lat});

  $BasicModelCopyWith<$Res>? get type;
}

/// @nodoc
class _$DealershipCopyWithImpl<$Res, $Val extends Dealership>
    implements $DealershipCopyWith<$Res> {
  _$DealershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dealership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? type = freezed,
    Object? image = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Dealership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $BasicModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealershipImplCopyWith<$Res>
    implements $DealershipCopyWith<$Res> {
  factory _$$DealershipImplCopyWith(
          _$DealershipImpl value, $Res Function(_$DealershipImpl) then) =
      __$$DealershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'type') BasicModel? type,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'longitude') String? lng,
      @JsonKey(name: 'latitude') String? lat});

  @override
  $BasicModelCopyWith<$Res>? get type;
}

/// @nodoc
class __$$DealershipImplCopyWithImpl<$Res>
    extends _$DealershipCopyWithImpl<$Res, _$DealershipImpl>
    implements _$$DealershipImplCopyWith<$Res> {
  __$$DealershipImplCopyWithImpl(
      _$DealershipImpl _value, $Res Function(_$DealershipImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dealership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? type = freezed,
    Object? image = freezed,
    Object? lng = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$DealershipImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$DealershipImpl extends _Dealership {
  const _$DealershipImpl(
      {this.id = -1,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'longitude') this.lng,
      @JsonKey(name: 'latitude') this.lat})
      : super._();

  factory _$DealershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealershipImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'type')
  final BasicModel? type;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'longitude')
  final String? lng;
  @override
  @JsonKey(name: 'latitude')
  final String? lat;

  @override
  String toString() {
    return 'Dealership(id: $id, name: $name, type: $type, image: $image, lng: $lng, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealershipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, image, lng, lat);

  /// Create a copy of Dealership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealershipImplCopyWith<_$DealershipImpl> get copyWith =>
      __$$DealershipImplCopyWithImpl<_$DealershipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealershipImplToJson(
      this,
    );
  }
}

abstract class _Dealership extends Dealership {
  const factory _Dealership(
      {final int id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'type') final BasicModel? type,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'longitude') final String? lng,
      @JsonKey(name: 'latitude') final String? lat}) = _$DealershipImpl;
  const _Dealership._() : super._();

  factory _Dealership.fromJson(Map<String, dynamic> json) =
      _$DealershipImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'type')
  BasicModel? get type;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'longitude')
  String? get lng;
  @override
  @JsonKey(name: 'latitude')
  String? get lat;

  /// Create a copy of Dealership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealershipImplCopyWith<_$DealershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
