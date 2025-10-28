part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login(String mobileNumber) = _LoginEvent;
  const factory AuthEvent.resendOTP() = _ResendOTPEvent;
  const factory AuthEvent.verifyMobileNumber(String code) =
      _VerifyMobileNumberEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
}
