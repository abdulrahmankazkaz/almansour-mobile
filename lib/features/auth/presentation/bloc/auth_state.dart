part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _LoadingState;
  const factory AuthState.loggedInSuccess() = _LoggedInSuccessState;
  const factory AuthState.resendOTPSuccess() = _ResendOTPSuccessState;
  const factory AuthState.verifySuccess(User user) = _VerifySuccessState;
  const factory AuthState.logoutSuccess() = _LogoutSuccessState;
  const factory AuthState.failed(String errorMessage) = _FailedState;
}
