// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DefaultSuccessModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DefaultSuccessModel _$DefaultSuccessModelFromJson(Map<String, dynamic> json) {
  return _DefaultSuccessModel.fromJson(json);
}

/// @nodoc
mixin _$DefaultSuccessModel {
  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this DefaultSuccessModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefaultSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultSuccessModelCopyWith<DefaultSuccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultSuccessModelCopyWith<$Res> {
  factory $DefaultSuccessModelCopyWith(
          DefaultSuccessModel value, $Res Function(DefaultSuccessModel) then) =
      _$DefaultSuccessModelCopyWithImpl<$Res, DefaultSuccessModel>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class _$DefaultSuccessModelCopyWithImpl<$Res, $Val extends DefaultSuccessModel>
    implements $DefaultSuccessModelCopyWith<$Res> {
  _$DefaultSuccessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultSuccessModelImplCopyWith<$Res>
    implements $DefaultSuccessModelCopyWith<$Res> {
  factory _$$DefaultSuccessModelImplCopyWith(_$DefaultSuccessModelImpl value,
          $Res Function(_$DefaultSuccessModelImpl) then) =
      __$$DefaultSuccessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$DefaultSuccessModelImplCopyWithImpl<$Res>
    extends _$DefaultSuccessModelCopyWithImpl<$Res, _$DefaultSuccessModelImpl>
    implements _$$DefaultSuccessModelImplCopyWith<$Res> {
  __$$DefaultSuccessModelImplCopyWithImpl(_$DefaultSuccessModelImpl _value,
      $Res Function(_$DefaultSuccessModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$DefaultSuccessModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultSuccessModelImpl implements _DefaultSuccessModel {
  const _$DefaultSuccessModelImpl({this.message = '', this.code = ''});

  factory _$DefaultSuccessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultSuccessModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'DefaultSuccessModel(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultSuccessModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of DefaultSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultSuccessModelImplCopyWith<_$DefaultSuccessModelImpl> get copyWith =>
      __$$DefaultSuccessModelImplCopyWithImpl<_$DefaultSuccessModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultSuccessModelImplToJson(
      this,
    );
  }
}

abstract class _DefaultSuccessModel implements DefaultSuccessModel {
  const factory _DefaultSuccessModel(
      {final String message, final String code}) = _$DefaultSuccessModelImpl;

  factory _DefaultSuccessModel.fromJson(Map<String, dynamic> json) =
      _$DefaultSuccessModelImpl.fromJson;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of DefaultSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultSuccessModelImplCopyWith<_$DefaultSuccessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
