// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_with_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageWithColor _$ImageWithColorFromJson(Map<String, dynamic> json) {
  return _ImageWithColor.fromJson(json);
}

/// @nodoc
mixin _$ImageWithColor {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  ColorEntity get color => throw _privateConstructorUsedError;

  /// Serializes this ImageWithColor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageWithColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageWithColorCopyWith<ImageWithColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageWithColorCopyWith<$Res> {
  factory $ImageWithColorCopyWith(
          ImageWithColor value, $Res Function(ImageWithColor) then) =
      _$ImageWithColorCopyWithImpl<$Res, ImageWithColor>;
  @useResult
  $Res call({int id, String image, ColorEntity color});

  $ColorEntityCopyWith<$Res> get color;
}

/// @nodoc
class _$ImageWithColorCopyWithImpl<$Res, $Val extends ImageWithColor>
    implements $ImageWithColorCopyWith<$Res> {
  _$ImageWithColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageWithColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorEntity,
    ) as $Val);
  }

  /// Create a copy of ImageWithColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorEntityCopyWith<$Res> get color {
    return $ColorEntityCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageWithColorImplCopyWith<$Res>
    implements $ImageWithColorCopyWith<$Res> {
  factory _$$ImageWithColorImplCopyWith(_$ImageWithColorImpl value,
          $Res Function(_$ImageWithColorImpl) then) =
      __$$ImageWithColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String image, ColorEntity color});

  @override
  $ColorEntityCopyWith<$Res> get color;
}

/// @nodoc
class __$$ImageWithColorImplCopyWithImpl<$Res>
    extends _$ImageWithColorCopyWithImpl<$Res, _$ImageWithColorImpl>
    implements _$$ImageWithColorImplCopyWith<$Res> {
  __$$ImageWithColorImplCopyWithImpl(
      _$ImageWithColorImpl _value, $Res Function(_$ImageWithColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageWithColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? color = null,
  }) {
    return _then(_$ImageWithColorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageWithColorImpl implements _ImageWithColor {
  const _$ImageWithColorImpl(
      {required this.id,
      this.image = '',
      this.color = const ColorEntity(id: -1)});

  factory _$ImageWithColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageWithColorImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final ColorEntity color;

  @override
  String toString() {
    return 'ImageWithColor(id: $id, image: $image, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageWithColorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, color);

  /// Create a copy of ImageWithColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageWithColorImplCopyWith<_$ImageWithColorImpl> get copyWith =>
      __$$ImageWithColorImplCopyWithImpl<_$ImageWithColorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageWithColorImplToJson(
      this,
    );
  }
}

abstract class _ImageWithColor implements ImageWithColor {
  const factory _ImageWithColor(
      {required final int id,
      final String image,
      final ColorEntity color}) = _$ImageWithColorImpl;

  factory _ImageWithColor.fromJson(Map<String, dynamic> json) =
      _$ImageWithColorImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  ColorEntity get color;

  /// Create a copy of ImageWithColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageWithColorImplCopyWith<_$ImageWithColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
