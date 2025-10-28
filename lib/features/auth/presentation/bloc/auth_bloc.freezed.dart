// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String mobileNumber) login,
    required TResult Function() resendOTP,
    required TResult Function(String code) verifyMobileNumber,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String mobileNumber)? login,
    TResult? Function()? resendOTP,
    TResult? Function(String code)? verifyMobileNumber,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String mobileNumber)? login,
    TResult Function()? resendOTP,
    TResult Function(String code)? verifyMobileNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ResendOTPEvent value) resendOTP,
    required TResult Function(_VerifyMobileNumberEvent value)
        verifyMobileNumber,
    required TResult Function(_LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_ResendOTPEvent value)? resendOTP,
    TResult? Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult? Function(_LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ResendOTPEvent value)? resendOTP,
    TResult Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String mobileNumber) login,
    required TResult Function() resendOTP,
    required TResult Function(String code) verifyMobileNumber,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String mobileNumber)? login,
    TResult? Function()? resendOTP,
    TResult? Function(String code)? verifyMobileNumber,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String mobileNumber)? login,
    TResult Function()? resendOTP,
    TResult Function(String code)? verifyMobileNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ResendOTPEvent value) resendOTP,
    required TResult Function(_VerifyMobileNumberEvent value)
        verifyMobileNumber,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_ResendOTPEvent value)? resendOTP,
    TResult? Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ResendOTPEvent value)? resendOTP,
    TResult Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNumber});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
  }) {
    return _then(_$LoginEventImpl(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements _LoginEvent {
  const _$LoginEventImpl(this.mobileNumber);

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'AuthEvent.login(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String mobileNumber) login,
    required TResult Function() resendOTP,
    required TResult Function(String code) verifyMobileNumber,
    required TResult Function() logout,
  }) {
    return login(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String mobileNumber)? login,
    TResult? Function()? resendOTP,
    TResult? Function(String code)? verifyMobileNumber,
    TResult? Function()? logout,
  }) {
    return login?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String mobileNumber)? login,
    TResult Function()? resendOTP,
    TResult Function(String code)? verifyMobileNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ResendOTPEvent value) resendOTP,
    required TResult Function(_VerifyMobileNumberEvent value)
        verifyMobileNumber,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_ResendOTPEvent value)? resendOTP,
    TResult? Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ResendOTPEvent value)? resendOTP,
    TResult Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements AuthEvent {
  const factory _LoginEvent(final String mobileNumber) = _$LoginEventImpl;

  String get mobileNumber;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOTPEventImplCopyWith<$Res> {
  factory _$$ResendOTPEventImplCopyWith(_$ResendOTPEventImpl value,
          $Res Function(_$ResendOTPEventImpl) then) =
      __$$ResendOTPEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOTPEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendOTPEventImpl>
    implements _$$ResendOTPEventImplCopyWith<$Res> {
  __$$ResendOTPEventImplCopyWithImpl(
      _$ResendOTPEventImpl _value, $Res Function(_$ResendOTPEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResendOTPEventImpl implements _ResendOTPEvent {
  const _$ResendOTPEventImpl();

  @override
  String toString() {
    return 'AuthEvent.resendOTP()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendOTPEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String mobileNumber) login,
    required TResult Function() resendOTP,
    required TResult Function(String code) verifyMobileNumber,
    required TResult Function() logout,
  }) {
    return resendOTP();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String mobileNumber)? login,
    TResult? Function()? resendOTP,
    TResult? Function(String code)? verifyMobileNumber,
    TResult? Function()? logout,
  }) {
    return resendOTP?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String mobileNumber)? login,
    TResult Function()? resendOTP,
    TResult Function(String code)? verifyMobileNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ResendOTPEvent value) resendOTP,
    required TResult Function(_VerifyMobileNumberEvent value)
        verifyMobileNumber,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return resendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_ResendOTPEvent value)? resendOTP,
    TResult? Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return resendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ResendOTPEvent value)? resendOTP,
    TResult Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP(this);
    }
    return orElse();
  }
}

abstract class _ResendOTPEvent implements AuthEvent {
  const factory _ResendOTPEvent() = _$ResendOTPEventImpl;
}

/// @nodoc
abstract class _$$VerifyMobileNumberEventImplCopyWith<$Res> {
  factory _$$VerifyMobileNumberEventImplCopyWith(
          _$VerifyMobileNumberEventImpl value,
          $Res Function(_$VerifyMobileNumberEventImpl) then) =
      __$$VerifyMobileNumberEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$VerifyMobileNumberEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyMobileNumberEventImpl>
    implements _$$VerifyMobileNumberEventImplCopyWith<$Res> {
  __$$VerifyMobileNumberEventImplCopyWithImpl(
      _$VerifyMobileNumberEventImpl _value,
      $Res Function(_$VerifyMobileNumberEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$VerifyMobileNumberEventImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyMobileNumberEventImpl implements _VerifyMobileNumberEvent {
  const _$VerifyMobileNumberEventImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.verifyMobileNumber(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobileNumberEventImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyMobileNumberEventImplCopyWith<_$VerifyMobileNumberEventImpl>
      get copyWith => __$$VerifyMobileNumberEventImplCopyWithImpl<
          _$VerifyMobileNumberEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String mobileNumber) login,
    required TResult Function() resendOTP,
    required TResult Function(String code) verifyMobileNumber,
    required TResult Function() logout,
  }) {
    return verifyMobileNumber(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String mobileNumber)? login,
    TResult? Function()? resendOTP,
    TResult? Function(String code)? verifyMobileNumber,
    TResult? Function()? logout,
  }) {
    return verifyMobileNumber?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String mobileNumber)? login,
    TResult Function()? resendOTP,
    TResult Function(String code)? verifyMobileNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (verifyMobileNumber != null) {
      return verifyMobileNumber(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ResendOTPEvent value) resendOTP,
    required TResult Function(_VerifyMobileNumberEvent value)
        verifyMobileNumber,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return verifyMobileNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_ResendOTPEvent value)? resendOTP,
    TResult? Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return verifyMobileNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ResendOTPEvent value)? resendOTP,
    TResult Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (verifyMobileNumber != null) {
      return verifyMobileNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyMobileNumberEvent implements AuthEvent {
  const factory _VerifyMobileNumberEvent(final String code) =
      _$VerifyMobileNumberEventImpl;

  String get code;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyMobileNumberEventImplCopyWith<_$VerifyMobileNumberEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
          _$LogoutEventImpl value, $Res Function(_$LogoutEventImpl) then) =
      __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
      _$LogoutEventImpl _value, $Res Function(_$LogoutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutEventImpl implements _LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String mobileNumber) login,
    required TResult Function() resendOTP,
    required TResult Function(String code) verifyMobileNumber,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String mobileNumber)? login,
    TResult? Function()? resendOTP,
    TResult? Function(String code)? verifyMobileNumber,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String mobileNumber)? login,
    TResult Function()? resendOTP,
    TResult Function(String code)? verifyMobileNumber,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ResendOTPEvent value) resendOTP,
    required TResult Function(_VerifyMobileNumberEvent value)
        verifyMobileNumber,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_ResendOTPEvent value)? resendOTP,
    TResult? Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult? Function(_LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ResendOTPEvent value)? resendOTP,
    TResult Function(_VerifyMobileNumberEvent value)? verifyMobileNumber,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements AuthEvent {
  const factory _LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoggedInSuccessStateImplCopyWith<$Res> {
  factory _$$LoggedInSuccessStateImplCopyWith(_$LoggedInSuccessStateImpl value,
          $Res Function(_$LoggedInSuccessStateImpl) then) =
      __$$LoggedInSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedInSuccessStateImpl>
    implements _$$LoggedInSuccessStateImplCopyWith<$Res> {
  __$$LoggedInSuccessStateImplCopyWithImpl(_$LoggedInSuccessStateImpl _value,
      $Res Function(_$LoggedInSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoggedInSuccessStateImpl implements _LoggedInSuccessState {
  const _$LoggedInSuccessStateImpl();

  @override
  String toString() {
    return 'AuthState.loggedInSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) {
    return loggedInSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loggedInSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loggedInSuccess != null) {
      return loggedInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) {
    return loggedInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) {
    return loggedInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loggedInSuccess != null) {
      return loggedInSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoggedInSuccessState implements AuthState {
  const factory _LoggedInSuccessState() = _$LoggedInSuccessStateImpl;
}

/// @nodoc
abstract class _$$ResendOTPSuccessStateImplCopyWith<$Res> {
  factory _$$ResendOTPSuccessStateImplCopyWith(
          _$ResendOTPSuccessStateImpl value,
          $Res Function(_$ResendOTPSuccessStateImpl) then) =
      __$$ResendOTPSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOTPSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ResendOTPSuccessStateImpl>
    implements _$$ResendOTPSuccessStateImplCopyWith<$Res> {
  __$$ResendOTPSuccessStateImplCopyWithImpl(_$ResendOTPSuccessStateImpl _value,
      $Res Function(_$ResendOTPSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResendOTPSuccessStateImpl implements _ResendOTPSuccessState {
  const _$ResendOTPSuccessStateImpl();

  @override
  String toString() {
    return 'AuthState.resendOTPSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOTPSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) {
    return resendOTPSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) {
    return resendOTPSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (resendOTPSuccess != null) {
      return resendOTPSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) {
    return resendOTPSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) {
    return resendOTPSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) {
    if (resendOTPSuccess != null) {
      return resendOTPSuccess(this);
    }
    return orElse();
  }
}

abstract class _ResendOTPSuccessState implements AuthState {
  const factory _ResendOTPSuccessState() = _$ResendOTPSuccessStateImpl;
}

/// @nodoc
abstract class _$$VerifySuccessStateImplCopyWith<$Res> {
  factory _$$VerifySuccessStateImplCopyWith(_$VerifySuccessStateImpl value,
          $Res Function(_$VerifySuccessStateImpl) then) =
      __$$VerifySuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$VerifySuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerifySuccessStateImpl>
    implements _$$VerifySuccessStateImplCopyWith<$Res> {
  __$$VerifySuccessStateImplCopyWithImpl(_$VerifySuccessStateImpl _value,
      $Res Function(_$VerifySuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$VerifySuccessStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$VerifySuccessStateImpl implements _VerifySuccessState {
  const _$VerifySuccessStateImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.verifySuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifySuccessStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifySuccessStateImplCopyWith<_$VerifySuccessStateImpl> get copyWith =>
      __$$VerifySuccessStateImplCopyWithImpl<_$VerifySuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) {
    return verifySuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) {
    return verifySuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (verifySuccess != null) {
      return verifySuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) {
    return verifySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) {
    return verifySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) {
    if (verifySuccess != null) {
      return verifySuccess(this);
    }
    return orElse();
  }
}

abstract class _VerifySuccessState implements AuthState {
  const factory _VerifySuccessState(final User user) = _$VerifySuccessStateImpl;

  User get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifySuccessStateImplCopyWith<_$VerifySuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutSuccessStateImplCopyWith<$Res> {
  factory _$$LogoutSuccessStateImplCopyWith(_$LogoutSuccessStateImpl value,
          $Res Function(_$LogoutSuccessStateImpl) then) =
      __$$LogoutSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutSuccessStateImpl>
    implements _$$LogoutSuccessStateImplCopyWith<$Res> {
  __$$LogoutSuccessStateImplCopyWithImpl(_$LogoutSuccessStateImpl _value,
      $Res Function(_$LogoutSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutSuccessStateImpl implements _LogoutSuccessState {
  const _$LogoutSuccessStateImpl();

  @override
  String toString() {
    return 'AuthState.logoutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogoutSuccessState implements AuthState {
  const factory _LogoutSuccessState() = _$LogoutSuccessStateImpl;
}

/// @nodoc
abstract class _$$FailedStateImplCopyWith<$Res> {
  factory _$$FailedStateImplCopyWith(
          _$FailedStateImpl value, $Res Function(_$FailedStateImpl) then) =
      __$$FailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedStateImpl>
    implements _$$FailedStateImplCopyWith<$Res> {
  __$$FailedStateImplCopyWithImpl(
      _$FailedStateImpl _value, $Res Function(_$FailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedStateImpl implements _FailedState {
  const _$FailedStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedStateImplCopyWith<_$FailedStateImpl> get copyWith =>
      __$$FailedStateImplCopyWithImpl<_$FailedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedInSuccess,
    required TResult Function() resendOTPSuccess,
    required TResult Function(User user) verifySuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedInSuccess,
    TResult? Function()? resendOTPSuccess,
    TResult? Function(User user)? verifySuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedInSuccess,
    TResult Function()? resendOTPSuccess,
    TResult Function(User user)? verifySuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoggedInSuccessState value) loggedInSuccess,
    required TResult Function(_ResendOTPSuccessState value) resendOTPSuccess,
    required TResult Function(_VerifySuccessState value) verifySuccess,
    required TResult Function(_LogoutSuccessState value) logoutSuccess,
    required TResult Function(_FailedState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult? Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult? Function(_VerifySuccessState value)? verifySuccess,
    TResult? Function(_LogoutSuccessState value)? logoutSuccess,
    TResult? Function(_FailedState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoggedInSuccessState value)? loggedInSuccess,
    TResult Function(_ResendOTPSuccessState value)? resendOTPSuccess,
    TResult Function(_VerifySuccessState value)? verifySuccess,
    TResult Function(_LogoutSuccessState value)? logoutSuccess,
    TResult Function(_FailedState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _FailedState implements AuthState {
  const factory _FailedState(final String errorMessage) = _$FailedStateImpl;

  String get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedStateImplCopyWith<_$FailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
