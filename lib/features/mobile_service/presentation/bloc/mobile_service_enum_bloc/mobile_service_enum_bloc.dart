import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/use_cases/get_areas.dart';
import '../../../domain/use_cases/get_cities.dart';
import '../../../domain/use_cases/get_mobile_service_type.dart';
import '../../../domain/use_cases/get_streets.dart';

part 'mobile_service_enum_bloc.freezed.dart';

part 'mobile_service_enum_event.dart';

part 'mobile_service_enum_state.dart';

class MobileServiceEnumBloc
    extends Bloc<MobileServiceEnumEvent, MobileServiceEnumState> {
  final GetCity _getCity = getIt<GetCity>();
  final GetAreas _getAreas = getIt<GetAreas>();
  final GetStreets _getStreets = getIt<GetStreets>();
  final GetMobileServiceType _getTypes = getIt<GetMobileServiceType>();

  MobileServiceEnumBloc() : super(const MobileServiceEnumState.initial()) {
    on<MobileServiceEnumEvent>((event, emit) async {
      await event.map(
          started: (value) {
            emit(const MobileServiceEnumState.areasLoaded([]));
            emit(const MobileServiceEnumState.streetLoaded([]));
          },
          getCities: (value) async => await _onGetCitiesEvent(emit, value),
          getAreas: (value) async => await _onGetAreasEvent(emit, value),
          getStreets: (value) async => await _onGetStreetsEvent(emit, value),
          getTypes: (value) async => await _onGetTypesEvent(emit,value) ,
      );

    });
  }

  Future<void> _onGetCitiesEvent(
      Emitter<MobileServiceEnumState> emit, _GetCities event) async {
    try {
      emit(const MobileServiceEnumState.citiesLoading());
      await Future.sync(() async =>
          (await _getCity.execute(NoParams())).when((success)  {
            emit(MobileServiceEnumState.citiesLoaded(success.data));
          }, (error) => emit(MobileServiceEnumState.failed(error.message))));
    } catch (e) {
      emit(MobileServiceEnumState.failed(e.toString()));
    }
  }

  Future<void> _onGetAreasEvent(
      Emitter<MobileServiceEnumState> emit, _GetAreas event) async {
    try {
      emit(const MobileServiceEnumState.areasLoading());
      await Future.sync(() async =>
          (await _getAreas.execute(event.cityId)).when((success)  {
            emit(MobileServiceEnumState.areasLoaded(success.data));
          }, (error) => emit(MobileServiceEnumState.failed(error.message))));
    } catch (e) {
      emit(MobileServiceEnumState.failed(e.toString()));
    }
  }

  Future<void> _onGetStreetsEvent(
      Emitter<MobileServiceEnumState> emit, _GetStreets event) async {
    try {
      emit(const MobileServiceEnumState.streetsLoading());
      await Future.sync(() async =>
          (await _getStreets.execute(event.areaId)).when((success)  {
            emit(MobileServiceEnumState.streetLoaded(success.data));
          }, (error) => emit(MobileServiceEnumState.failed(error.message))));
    } catch (e) {
      emit(MobileServiceEnumState.failed(e.toString()));
    }
  }

  Future<void> _onGetTypesEvent(
      Emitter<MobileServiceEnumState> emit, _GetTypes event) async {
    try {
      emit(const MobileServiceEnumState.typesLoading());
      await Future.sync(() async =>
          (await _getTypes.execute(NoParams())).when((success)  {
            emit(MobileServiceEnumState.typesLoaded(success.data));
          }, (error) => emit(MobileServiceEnumState.failed(error.message))));
    } catch (e) {
      emit(MobileServiceEnumState.failed(e.toString()));
    }
  }

}
