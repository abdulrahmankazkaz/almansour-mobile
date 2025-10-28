// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfigEntity _$ConfigEntityFromJson(Map<String, dynamic> json) {
  return _ConfigEntity.fromJson(json);
}

/// @nodoc
mixin _$ConfigEntity {
  @JsonKey(name: 'phone_number')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  CurrencyEntity get currency => throw _privateConstructorUsedError;

  /// Serializes this ConfigEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigEntityCopyWith<ConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigEntityCopyWith<$Res> {
  factory $ConfigEntityCopyWith(
          ConfigEntity value, $Res Function(ConfigEntity) then) =
      _$ConfigEntityCopyWithImpl<$Res, ConfigEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String phone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'currency') CurrencyEntity currency});

  $CurrencyEntityCopyWith<$Res> get currency;
}

/// @nodoc
class _$ConfigEntityCopyWithImpl<$Res, $Val extends ConfigEntity>
    implements $ConfigEntityCopyWith<$Res> {
  _$ConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity,
    ) as $Val);
  }

  /// Create a copy of ConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyEntityCopyWith<$Res> get currency {
    return $CurrencyEntityCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfigEntityImplCopyWith<$Res>
    implements $ConfigEntityCopyWith<$Res> {
  factory _$$ConfigEntityImplCopyWith(
          _$ConfigEntityImpl value, $Res Function(_$ConfigEntityImpl) then) =
      __$$ConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String phone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'currency') CurrencyEntity currency});

  @override
  $CurrencyEntityCopyWith<$Res> get currency;
}

/// @nodoc
class __$$ConfigEntityImplCopyWithImpl<$Res>
    extends _$ConfigEntityCopyWithImpl<$Res, _$ConfigEntityImpl>
    implements _$$ConfigEntityImplCopyWith<$Res> {
  __$$ConfigEntityImplCopyWithImpl(
      _$ConfigEntityImpl _value, $Res Function(_$ConfigEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
    Object? currency = null,
  }) {
    return _then(_$ConfigEntityImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigEntityImpl implements _ConfigEntity {
  const _$ConfigEntityImpl(
      {@JsonKey(name: 'phone_number') required this.phone,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'currency') required this.currency});

  factory _$ConfigEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigEntityImplFromJson(json);

  @override
  @JsonKey(name: 'phone_number')
  final String phone;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'currency')
  final CurrencyEntity currency;

  @override
  String toString() {
    return 'ConfigEntity(phone: $phone, email: $email, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigEntityImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, email, currency);

  /// Create a copy of ConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigEntityImplCopyWith<_$ConfigEntityImpl> get copyWith =>
      __$$ConfigEntityImplCopyWithImpl<_$ConfigEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigEntityImplToJson(
      this,
    );
  }
}

abstract class _ConfigEntity implements ConfigEntity {
  const factory _ConfigEntity(
          {@JsonKey(name: 'phone_number') required final String phone,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'currency') required final CurrencyEntity currency}) =
      _$ConfigEntityImpl;

  factory _ConfigEntity.fromJson(Map<String, dynamic> json) =
      _$ConfigEntityImpl.fromJson;

  @override
  @JsonKey(name: 'phone_number')
  String get phone;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'currency')
  CurrencyEntity get currency;

  /// Create a copy of ConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigEntityImplCopyWith<_$ConfigEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
