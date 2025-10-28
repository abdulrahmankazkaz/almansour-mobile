// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DefaultDataModel<T> _$DefaultDataModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _DefaultDataModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$DefaultDataModel<T> {
  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  /// Serializes this DefaultDataModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DefaultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultDataModelCopyWith<T, DefaultDataModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultDataModelCopyWith<T, $Res> {
  factory $DefaultDataModelCopyWith(
          DefaultDataModel<T> value, $Res Function(DefaultDataModel<T>) then) =
      _$DefaultDataModelCopyWithImpl<T, $Res, DefaultDataModel<T>>;
  @useResult
  $Res call({String message, String code, T data});
}

/// @nodoc
class _$DefaultDataModelCopyWithImpl<T, $Res, $Val extends DefaultDataModel<T>>
    implements $DefaultDataModelCopyWith<T, $Res> {
  _$DefaultDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultDataModelImplCopyWith<T, $Res>
    implements $DefaultDataModelCopyWith<T, $Res> {
  factory _$$DefaultDataModelImplCopyWith(_$DefaultDataModelImpl<T> value,
          $Res Function(_$DefaultDataModelImpl<T>) then) =
      __$$DefaultDataModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String message, String code, T data});
}

/// @nodoc
class __$$DefaultDataModelImplCopyWithImpl<T, $Res>
    extends _$DefaultDataModelCopyWithImpl<T, $Res, _$DefaultDataModelImpl<T>>
    implements _$$DefaultDataModelImplCopyWith<T, $Res> {
  __$$DefaultDataModelImplCopyWithImpl(_$DefaultDataModelImpl<T> _value,
      $Res Function(_$DefaultDataModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DefaultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? data = freezed,
  }) {
    return _then(_$DefaultDataModelImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$DefaultDataModelImpl<T> implements _DefaultDataModel<T> {
  const _$DefaultDataModelImpl(
      {this.message = '', this.code = '', required this.data});

  factory _$DefaultDataModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$DefaultDataModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String code;
  @override
  final T data;

  @override
  String toString() {
    return 'DefaultDataModel<$T>(message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultDataModelImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, code, const DeepCollectionEquality().hash(data));

  /// Create a copy of DefaultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultDataModelImplCopyWith<T, _$DefaultDataModelImpl<T>> get copyWith =>
      __$$DefaultDataModelImplCopyWithImpl<T, _$DefaultDataModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$DefaultDataModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _DefaultDataModel<T> implements DefaultDataModel<T> {
  const factory _DefaultDataModel(
      {final String message,
      final String code,
      required final T data}) = _$DefaultDataModelImpl<T>;

  factory _DefaultDataModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$DefaultDataModelImpl<T>.fromJson;

  @override
  String get message;
  @override
  String get code;
  @override
  T get data;

  /// Create a copy of DefaultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultDataModelImplCopyWith<T, _$DefaultDataModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
