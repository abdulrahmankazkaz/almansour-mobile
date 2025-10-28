import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../domain/usecases/get_cities.dart';
import '../../../domain/usecases/get_genders.dart';
import '../../../entities/no_params.dart';

part 'profile_enum_event.dart';
part 'profile_enum_state.dart';
part 'profile_enum_bloc.freezed.dart';

class ProfileEnumBloc extends Bloc<ProfileEnumEvent, ProfileEnumState> {

  final GetGenders _getGenders = getIt<GetGenders>();
  final GetCities _getCities = getIt<GetCities>();

  ProfileEnumBloc() : super(const ProfileEnumState.initial()) {
    on<ProfileEnumEvent>((event, emit) async {
       await event.map(
         started: (value) {},
         getGenders: (value) async => await _onGetGendersEvent(emit,value) ,
         getCities: (value)  async => await _onGetCitiesEvent(emit,value));
    });
  }

  Future<void> _onGetGendersEvent(Emitter<ProfileEnumState> emit,_GetGender event) async {
    try {
      emit(const ProfileEnumState.loading());
      await Future.sync(() async =>
          (await _getGenders.execute(NoParams())).when((success)  {
            emit(ProfileEnumState.genderLoaded(success));
          }, (error) => emit(ProfileEnumState.failed(error.message))));
    } catch (e) {
      emit(ProfileEnumState.failed(e.toString()));
    }
  }

  Future<void> _onGetCitiesEvent(Emitter<ProfileEnumState> emit,_GetCities event) async {
    try {
      emit(const ProfileEnumState.loading());
      await Future.sync(() async =>
          (await _getCities.execute(NoParams())).when((success)  {
            emit(ProfileEnumState.cityLoaded(success));
          }, (error) => emit(ProfileEnumState.failed(error.message))));
    } catch (e) {
      emit(ProfileEnumState.failed(e.toString()));
    }
  }

}
