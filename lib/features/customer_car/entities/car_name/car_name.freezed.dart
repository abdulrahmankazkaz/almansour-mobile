// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarName _$CarNameFromJson(Map<String, dynamic> json) {
  return _CarName.fromJson(json);
}

/// @nodoc
mixin _$CarName {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this CarName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarNameCopyWith<CarName> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarNameCopyWith<$Res> {
  factory $CarNameCopyWith(CarName value, $Res Function(CarName) then) =
      _$CarNameCopyWithImpl<$Res, CarName>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String imageUrl});
}

/// @nodoc
class _$CarNameCopyWithImpl<$Res, $Val extends CarName>
    implements $CarNameCopyWith<$Res> {
  _$CarNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarNameImplCopyWith<$Res> implements $CarNameCopyWith<$Res> {
  factory _$$CarNameImplCopyWith(
          _$CarNameImpl value, $Res Function(_$CarNameImpl) then) =
      __$$CarNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String imageUrl});
}

/// @nodoc
class __$$CarNameImplCopyWithImpl<$Res>
    extends _$CarNameCopyWithImpl<$Res, _$CarNameImpl>
    implements _$$CarNameImplCopyWith<$Res> {
  __$$CarNameImplCopyWithImpl(
      _$CarNameImpl _value, $Res Function(_$CarNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CarNameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarNameImpl implements _CarName {
  const _$CarNameImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'image') this.imageUrl = ''});

  factory _$CarNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarNameImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'image')
  final String imageUrl;

  @override
  String toString() {
    return 'CarName(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  /// Create a copy of CarName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarNameImplCopyWith<_$CarNameImpl> get copyWith =>
      __$$CarNameImplCopyWithImpl<_$CarNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarNameImplToJson(
      this,
    );
  }
}

abstract class _CarName implements CarName {
  const factory _CarName(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'image') final String imageUrl}) = _$CarNameImpl;

  factory _CarName.fromJson(Map<String, dynamic> json) = _$CarNameImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'image')
  String get imageUrl;

  /// Create a copy of CarName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarNameImplCopyWith<_$CarNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
