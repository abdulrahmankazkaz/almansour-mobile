// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_checked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarChecked _$CarCheckedFromJson(Map<String, dynamic> json) {
  return _CarChecked.fromJson(json);
}

/// @nodoc
mixin _$CarChecked {
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;

  /// Serializes this CarChecked to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarChecked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarCheckedCopyWith<CarChecked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCheckedCopyWith<$Res> {
  factory $CarCheckedCopyWith(
          CarChecked value, $Res Function(CarChecked) then) =
      _$CarCheckedCopyWithImpl<$Res, CarChecked>;
  @useResult
  $Res call({@JsonKey(name: 'status') bool status});
}

/// @nodoc
class _$CarCheckedCopyWithImpl<$Res, $Val extends CarChecked>
    implements $CarCheckedCopyWith<$Res> {
  _$CarCheckedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarChecked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarCheckedImplCopyWith<$Res>
    implements $CarCheckedCopyWith<$Res> {
  factory _$$CarCheckedImplCopyWith(
          _$CarCheckedImpl value, $Res Function(_$CarCheckedImpl) then) =
      __$$CarCheckedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') bool status});
}

/// @nodoc
class __$$CarCheckedImplCopyWithImpl<$Res>
    extends _$CarCheckedCopyWithImpl<$Res, _$CarCheckedImpl>
    implements _$$CarCheckedImplCopyWith<$Res> {
  __$$CarCheckedImplCopyWithImpl(
      _$CarCheckedImpl _value, $Res Function(_$CarCheckedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarChecked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CarCheckedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarCheckedImpl implements _CarChecked {
  const _$CarCheckedImpl({@JsonKey(name: 'status') required this.status});

  factory _$CarCheckedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarCheckedImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool status;

  @override
  String toString() {
    return 'CarChecked(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarCheckedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of CarChecked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarCheckedImplCopyWith<_$CarCheckedImpl> get copyWith =>
      __$$CarCheckedImplCopyWithImpl<_$CarCheckedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarCheckedImplToJson(
      this,
    );
  }
}

abstract class _CarChecked implements CarChecked {
  const factory _CarChecked(
      {@JsonKey(name: 'status') required final bool status}) = _$CarCheckedImpl;

  factory _CarChecked.fromJson(Map<String, dynamic> json) =
      _$CarCheckedImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get status;

  /// Create a copy of CarChecked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarCheckedImplCopyWith<_$CarCheckedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
