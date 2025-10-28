// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasicModel _$BasicModelFromJson(Map<String, dynamic> json) {
  return _BasicModel.fromJson(json);
}

/// @nodoc
mixin _$BasicModel {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Serializes this BasicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasicModelCopyWith<BasicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicModelCopyWith<$Res> {
  factory $BasicModelCopyWith(
          BasicModel value, $Res Function(BasicModel) then) =
      _$BasicModelCopyWithImpl<$Res, BasicModel>;
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class _$BasicModelCopyWithImpl<$Res, $Val extends BasicModel>
    implements $BasicModelCopyWith<$Res> {
  _$BasicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicModelImplCopyWith<$Res>
    implements $BasicModelCopyWith<$Res> {
  factory _$$BasicModelImplCopyWith(
          _$BasicModelImpl value, $Res Function(_$BasicModelImpl) then) =
      __$$BasicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class __$$BasicModelImplCopyWithImpl<$Res>
    extends _$BasicModelCopyWithImpl<$Res, _$BasicModelImpl>
    implements _$$BasicModelImplCopyWith<$Res> {
  __$$BasicModelImplCopyWithImpl(
      _$BasicModelImpl _value, $Res Function(_$BasicModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$BasicModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicModelImpl extends _BasicModel {
  const _$BasicModelImpl({this.name = '', this.id = -1}) : super._();

  factory _$BasicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int id;

  @override
  String toString() {
    return 'BasicModel(name: $name, id: $id)';
  }

  /// Create a copy of BasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicModelImplCopyWith<_$BasicModelImpl> get copyWith =>
      __$$BasicModelImplCopyWithImpl<_$BasicModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicModelImplToJson(
      this,
    );
  }
}

abstract class _BasicModel extends BasicModel {
  const factory _BasicModel({final String name, final int id}) =
      _$BasicModelImpl;
  const _BasicModel._() : super._();

  factory _BasicModel.fromJson(Map<String, dynamic> json) =
      _$BasicModelImpl.fromJson;

  @override
  String get name;
  @override
  int get id;

  /// Create a copy of BasicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasicModelImplCopyWith<_$BasicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
