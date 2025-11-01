import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';
import 'package:mac_mobile/features/auth/domain/usecases/resend_otp_usecase.dart';
import 'package:mac_mobile/features/auth/domain/usecases/verify_number_use_case.dart';
import 'package:mac_mobile/features/auth/entities/parameters/auth_parameters.dart';
import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:mac_mobile/features/profile/entities/user.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/network/response_status_code.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../domain/usecases/login_use_case.dart';
import '../../domain/usecases/logout_use_case.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase = getIt<LoginUseCase>();
  final ResendOTPUseCase _resendOTPUseCase = getIt<ResendOTPUseCase>();
  final VerifyNumberUseCase _verifyNumberUseCase = getIt<VerifyNumberUseCase>();
  final LogoutUseCase _logoutUseCase = getIt<LogoutUseCase>();
  final AppPreferences _appPreferences = getIt<AppPreferences>();

  AuthBloc()
      : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        started: (_) {},
        login: (value) async => await _onLogInEvent(emit, value),
        verifyMobileNumber: (value) async =>
            await _onVerifyNumberEvent(emit, value),
        logout: (value) async => await _onLogoutEvent(emit, value),
        resendOTP: (value) async => await _onResendEvent(emit, value),
      );
    });
  }

  Future<void> _onLogInEvent(Emitter<AuthState> emit, _LoginEvent value) async {
    try {
      emit(const AuthState.loading());
      var result = await _loginUseCase.execute(value.mobileNumber);
      await result.whenSuccess((success) async {
        await _appPreferences.userPreferences.saveUserNumber(value.mobileNumber);
        await _appPreferences.userPreferences.setNeedToVerifyUser();
        emit(const AuthState.loggedInSuccess());
      });
      result.whenError((error) {
        if(error.code == ResponseStatusCode.oldVersion.value){
          emit(AuthState.initial());
        }
        else {
          emit(AuthState.failed(error.message));
        }
      });
    } catch (e) {
      emit(AuthState.failed(e.toString()));
    }
  }

  Future<void> _onResendEvent(
      Emitter<AuthState> emit, _ResendOTPEvent value) async {
    try {
      emit(const AuthState.loading());
      var result = await _resendOTPUseCase
          .execute(_appPreferences.userPreferences.getUserNumber());
      result.whenSuccess((success) {
        emit(const AuthState.resendOTPSuccess());
      });
      result.whenError((error) => emit(AuthState.failed(error.message)));
    } catch (e) {
      emit(AuthState.failed(e.toString()));
    }
  }

  Future<void> _onVerifyNumberEvent(
      Emitter<AuthState> emit, _VerifyMobileNumberEvent value) async {
    try {
      emit(const AuthState.loading());
      var result = await _verifyNumberUseCase.execute(AuthParameters(
          mobileNumber: _appPreferences.userPreferences.getUserNumber(),
          code: value.code));
      await result.whenSuccess((success) async {
        await _appPreferences.userPreferences.setUserTokens(success.token);
        await _appPreferences.userPreferences.saveUserData(success.user);
        await _appPreferences.userPreferences.removeNeedToVerifyUser();
        emit(AuthState.verifySuccess(success.user ?? const User()));
        LoggerService().logDebug(message: _appPreferences.userPreferences.isUserLoggedIn().toString());

      });
      result.whenError((error) {
        emit(AuthState.failed(error.message));
      });
    } catch (e) {
      emit(AuthState.failed(e.toString()));
    }
  }

  Future<void> _onLogoutEvent(
      Emitter<AuthState> emit, _LogoutEvent value) async {
    try {
      emit(const AuthState.loading());
      var result = await _logoutUseCase.execute(NoParams());
      result.whenSuccess((success) {
        _appPreferences.userPreferences.logOutPref();
        emit(const AuthState.logoutSuccess());
      });
      result.whenError((error) => emit(AuthState.failed(error.toString())));
    } catch (e) {
      emit(AuthState.failed(e.toString()));
    }
  }
}
