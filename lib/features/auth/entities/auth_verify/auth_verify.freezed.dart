// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthVerify _$AuthVerifyFromJson(Map<String, dynamic> json) {
  return _AuthVerify.fromJson(json);
}

/// @nodoc
mixin _$AuthVerify {
  @JsonKey(name: 'customer')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  /// Serializes this AuthVerify to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthVerifyCopyWith<AuthVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthVerifyCopyWith<$Res> {
  factory $AuthVerifyCopyWith(
          AuthVerify value, $Res Function(AuthVerify) then) =
      _$AuthVerifyCopyWithImpl<$Res, AuthVerify>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer') User? user,
      @JsonKey(name: 'token') String token});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthVerifyCopyWithImpl<$Res, $Val extends AuthVerify>
    implements $AuthVerifyCopyWith<$Res> {
  _$AuthVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AuthVerify
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthVerifyImplCopyWith<$Res>
    implements $AuthVerifyCopyWith<$Res> {
  factory _$$AuthVerifyImplCopyWith(
          _$AuthVerifyImpl value, $Res Function(_$AuthVerifyImpl) then) =
      __$$AuthVerifyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer') User? user,
      @JsonKey(name: 'token') String token});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthVerifyImplCopyWithImpl<$Res>
    extends _$AuthVerifyCopyWithImpl<$Res, _$AuthVerifyImpl>
    implements _$$AuthVerifyImplCopyWith<$Res> {
  __$$AuthVerifyImplCopyWithImpl(
      _$AuthVerifyImpl _value, $Res Function(_$AuthVerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = null,
  }) {
    return _then(_$AuthVerifyImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthVerifyImpl implements _AuthVerify {
  const _$AuthVerifyImpl(
      {@JsonKey(name: 'customer') this.user,
      @JsonKey(name: 'token') required this.token});

  factory _$AuthVerifyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthVerifyImplFromJson(json);

  @override
  @JsonKey(name: 'customer')
  final User? user;
  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'AuthVerify(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthVerifyImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  /// Create a copy of AuthVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthVerifyImplCopyWith<_$AuthVerifyImpl> get copyWith =>
      __$$AuthVerifyImplCopyWithImpl<_$AuthVerifyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthVerifyImplToJson(
      this,
    );
  }
}

abstract class _AuthVerify implements AuthVerify {
  const factory _AuthVerify(
      {@JsonKey(name: 'customer') final User? user,
      @JsonKey(name: 'token') required final String token}) = _$AuthVerifyImpl;

  factory _AuthVerify.fromJson(Map<String, dynamic> json) =
      _$AuthVerifyImpl.fromJson;

  @override
  @JsonKey(name: 'customer')
  User? get user;
  @override
  @JsonKey(name: 'token')
  String get token;

  /// Create a copy of AuthVerify
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthVerifyImplCopyWith<_$AuthVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
