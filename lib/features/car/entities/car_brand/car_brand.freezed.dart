// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarBrand _$CarBrandFromJson(Map<String, dynamic> json) {
  return _CarBrand.fromJson(json);
}

/// @nodoc
mixin _$CarBrand {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'button_name')
  String get linkTitle => throw _privateConstructorUsedError;

  /// Serializes this CarBrand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarBrand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarBrandCopyWith<CarBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarBrandCopyWith<$Res> {
  factory $CarBrandCopyWith(CarBrand value, $Res Function(CarBrand) then) =
      _$CarBrandCopyWithImpl<$Res, CarBrand>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String link,
      @JsonKey(name: 'button_name') String linkTitle});
}

/// @nodoc
class _$CarBrandCopyWithImpl<$Res, $Val extends CarBrand>
    implements $CarBrandCopyWith<$Res> {
  _$CarBrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarBrand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? link = null,
    Object? linkTitle = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      linkTitle: null == linkTitle
          ? _value.linkTitle
          : linkTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarBrandImplCopyWith<$Res>
    implements $CarBrandCopyWith<$Res> {
  factory _$$CarBrandImplCopyWith(
          _$CarBrandImpl value, $Res Function(_$CarBrandImpl) then) =
      __$$CarBrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String link,
      @JsonKey(name: 'button_name') String linkTitle});
}

/// @nodoc
class __$$CarBrandImplCopyWithImpl<$Res>
    extends _$CarBrandCopyWithImpl<$Res, _$CarBrandImpl>
    implements _$$CarBrandImplCopyWith<$Res> {
  __$$CarBrandImplCopyWithImpl(
      _$CarBrandImpl _value, $Res Function(_$CarBrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarBrand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? link = null,
    Object? linkTitle = null,
  }) {
    return _then(_$CarBrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      linkTitle: null == linkTitle
          ? _value.linkTitle
          : linkTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarBrandImpl implements _CarBrand {
  const _$CarBrandImpl(
      {required this.id,
      this.name = '',
      this.image = '',
      this.link = '',
      @JsonKey(name: 'button_name') this.linkTitle = ''});

  factory _$CarBrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarBrandImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String link;
  @override
  @JsonKey(name: 'button_name')
  final String linkTitle;

  @override
  String toString() {
    return 'CarBrand(id: $id, name: $name, image: $image, link: $link, linkTitle: $linkTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarBrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.linkTitle, linkTitle) ||
                other.linkTitle == linkTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, link, linkTitle);

  /// Create a copy of CarBrand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarBrandImplCopyWith<_$CarBrandImpl> get copyWith =>
      __$$CarBrandImplCopyWithImpl<_$CarBrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarBrandImplToJson(
      this,
    );
  }
}

abstract class _CarBrand implements CarBrand {
  const factory _CarBrand(
      {required final int id,
      final String name,
      final String image,
      final String link,
      @JsonKey(name: 'button_name') final String linkTitle}) = _$CarBrandImpl;

  factory _CarBrand.fromJson(Map<String, dynamic> json) =
      _$CarBrandImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get link;
  @override
  @JsonKey(name: 'button_name')
  String get linkTitle;

  /// Create a copy of CarBrand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarBrandImplCopyWith<_$CarBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
