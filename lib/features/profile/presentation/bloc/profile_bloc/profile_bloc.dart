import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/profile/domain/usecases/deactivate_account.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/utils/local_storage/app_preferences.dart';
import '../../../domain/usecases/delete_account.dart';
import '../../../domain/usecases/get_profile.dart';
import '../../../domain/usecases/update_profile_use_case.dart';
import '../../../entities/no_params.dart';
import '../../../entities/profile_parameters.dart';
import '../../../entities/user.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UpdateProfile _updateProfile =getIt<UpdateProfile>();
  final GetProfile _getProfile =getIt<GetProfile>();
  final DeactivateAccount _deactivateAccount =getIt<DeactivateAccount>();
  final DeleteAccount _deleteAccount =getIt<DeleteAccount>();
  final AppPreferences _appPreferences = getIt<AppPreferences>();

  ProfileBloc()
      : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
          started: (value) {},
          getProfile: (value) async => await _handleGetProfile(emit, value),
          updateProfile: (updateProfileEvent) async => await _handleUpdateProfile(emit, updateProfileEvent),
          deactivateAccount: (value) async => await _onDeactivateAccountEvent(emit,value),
          deleteAccount: (value) async => await _onDeleteAccountEvent(emit,value));
    });
  }

  Future<void> _handleGetProfile(
      Emitter<ProfileState> emit, _GetProfile value) async {
    try {
      emit(const ProfileState.loading());
      await Future.sync(() async =>
          (await _getProfile.execute(NoParams())).when((success) async {
            await _appPreferences.userPreferences.saveUserData(success);
            emit(ProfileState.getSuccess(success));
          }, (error) => emit(ProfileState.failed(error.message))));
    } catch (e) {
      emit(ProfileState.failed(e.toString()));
    }
  }

  Future<void> _handleUpdateProfile(
      Emitter<ProfileState> emit, _UpdateProfile value) async {
    try {
      emit(const ProfileState.loading());
      await Future.sync(() async =>
          (await _updateProfile.execute(value.profileParameters)).when(
              (success) async {
            await _appPreferences.userPreferences.saveUserData(success);
            emit(ProfileState.updateSuccessfully(success));
          }, (error) => emit(ProfileState.failed(error.message))));
    } catch (e) {
      emit(ProfileState.failed(e.toString()));
    }
  }

  Future<void> _onDeactivateAccountEvent(
      Emitter<ProfileState> emit, _DeactivateAccount value) async {
    try {
      emit(const ProfileState.loading());
      await Future.sync(() async =>
          (await _deactivateAccount.execute(NoParams())).when(
              (success) async {
                _appPreferences.userPreferences.logOutPref();
            emit(const ProfileState.accountDeactivated());
          }, (error) => emit(ProfileState.failed(error.message))));
    } catch (e) {
      emit(ProfileState.failed(e.toString()));
    }
  }

  Future<void> _onDeleteAccountEvent(
      Emitter<ProfileState> emit, _DeleteAccount value) async {
    try {
      emit(const ProfileState.loading());
      await Future.sync(() async =>
          (await _deleteAccount.execute(NoParams())).when(
              (success) async {
                _appPreferences.userPreferences.logOutPref();
                emit(const ProfileState.accountDeleted());
          }, (error) => emit(ProfileState.failed(error.message))));
    } catch (e) {
      emit(ProfileState.failed(e.toString()));
    }
  }



}
