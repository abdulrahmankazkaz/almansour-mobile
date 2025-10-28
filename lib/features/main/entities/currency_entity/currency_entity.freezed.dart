// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrencyEntity _$CurrencyEntityFromJson(Map<String, dynamic> json) {
  return _CurrencyEntity.fromJson(json);
}

/// @nodoc
mixin _$CurrencyEntity {
  @JsonKey(name: 'en')
  String get en => throw _privateConstructorUsedError;
  @JsonKey(name: 'ar')
  String get ar => throw _privateConstructorUsedError;

  /// Serializes this CurrencyEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyEntityCopyWith<CurrencyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEntityCopyWith<$Res> {
  factory $CurrencyEntityCopyWith(
          CurrencyEntity value, $Res Function(CurrencyEntity) then) =
      _$CurrencyEntityCopyWithImpl<$Res, CurrencyEntity>;
  @useResult
  $Res call({@JsonKey(name: 'en') String en, @JsonKey(name: 'ar') String ar});
}

/// @nodoc
class _$CurrencyEntityCopyWithImpl<$Res, $Val extends CurrencyEntity>
    implements $CurrencyEntityCopyWith<$Res> {
  _$CurrencyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ar = null,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyEntityImplCopyWith<$Res>
    implements $CurrencyEntityCopyWith<$Res> {
  factory _$$CurrencyEntityImplCopyWith(_$CurrencyEntityImpl value,
          $Res Function(_$CurrencyEntityImpl) then) =
      __$$CurrencyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'en') String en, @JsonKey(name: 'ar') String ar});
}

/// @nodoc
class __$$CurrencyEntityImplCopyWithImpl<$Res>
    extends _$CurrencyEntityCopyWithImpl<$Res, _$CurrencyEntityImpl>
    implements _$$CurrencyEntityImplCopyWith<$Res> {
  __$$CurrencyEntityImplCopyWithImpl(
      _$CurrencyEntityImpl _value, $Res Function(_$CurrencyEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ar = null,
  }) {
    return _then(_$CurrencyEntityImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyEntityImpl implements _CurrencyEntity {
  const _$CurrencyEntityImpl(
      {@JsonKey(name: 'en') required this.en,
      @JsonKey(name: 'ar') required this.ar});

  factory _$CurrencyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyEntityImplFromJson(json);

  @override
  @JsonKey(name: 'en')
  final String en;
  @override
  @JsonKey(name: 'ar')
  final String ar;

  @override
  String toString() {
    return 'CurrencyEntity(en: $en, ar: $ar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyEntityImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en, ar);

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyEntityImplCopyWith<_$CurrencyEntityImpl> get copyWith =>
      __$$CurrencyEntityImplCopyWithImpl<_$CurrencyEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyEntityImplToJson(
      this,
    );
  }
}

abstract class _CurrencyEntity implements CurrencyEntity {
  const factory _CurrencyEntity(
      {@JsonKey(name: 'en') required final String en,
      @JsonKey(name: 'ar') required final String ar}) = _$CurrencyEntityImpl;

  factory _CurrencyEntity.fromJson(Map<String, dynamic> json) =
      _$CurrencyEntityImpl.fromJson;

  @override
  @JsonKey(name: 'en')
  String get en;
  @override
  @JsonKey(name: 'ar')
  String get ar;

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyEntityImplCopyWith<_$CurrencyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
