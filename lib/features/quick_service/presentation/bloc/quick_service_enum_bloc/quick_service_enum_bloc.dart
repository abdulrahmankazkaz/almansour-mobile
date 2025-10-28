import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/usecases/get_quick_service_cities.dart';
import '../../../domain/usecases/get_quick_service_dealerships.dart';
import '../../../domain/usecases/get_quick_service_services.dart';

part 'quick_service_enum_event.dart';
part 'quick_service_enum_state.dart';
part 'quick_service_enum_bloc.freezed.dart';

class QuickServiceEnumBloc extends Bloc<QuickServiceEnumEvent, QuickServiceEnumState> {
  final GetQuickServiceCities _getCities = getIt<GetQuickServiceCities>();
  final GetQuickServiceDealerships _getDealerships = getIt<GetQuickServiceDealerships>();
  final GetQuickServiceServices _getServices = getIt<GetQuickServiceServices>();
  QuickServiceEnumBloc() : super(const QuickServiceEnumState.initial()) {
    on<QuickServiceEnumEvent>((event, emit) async {
      await event.map(
        started: (value) {
          emit(const QuickServiceEnumState.dealershipsLoaded([]));
        },
        getCities: (value) async => await _onGetCitiesEvent(emit, value),
        getDealerships: (value) async => await _onGetDealershipsEvent(emit, value),
        getServices: (value) async => await _onGetServicesEvent(emit, value),
      );
    });
  }

  Future<void> _onGetCitiesEvent(
      Emitter<QuickServiceEnumState> emit, _GetCities event) async {
    try {
      emit(const QuickServiceEnumState.citiesLoading());
      await Future.sync(() async =>
          (await _getCities.execute(NoParams())).when((success)  {
            emit(QuickServiceEnumState.citiesLoaded(success.data));
          }, (error) => emit(QuickServiceEnumState.failed(error.message))));
    } catch (e) {
      emit(QuickServiceEnumState.failed(e.toString()));
    }
  }

  Future<void> _onGetDealershipsEvent(
      Emitter<QuickServiceEnumState> emit, _GetDealerships event) async {
    try {
      emit(const QuickServiceEnumState.dealershipsLoading());
      await Future.sync(() async =>
          (await _getDealerships.execute(event.cityId)).when((success)  {
            emit(QuickServiceEnumState.dealershipsLoaded(success.data));
          }, (error) => emit(QuickServiceEnumState.failed(error.message))));
    } catch (e) {
      emit(QuickServiceEnumState.failed(e.toString()));
    }
  }

  Future<void> _onGetServicesEvent(
      Emitter<QuickServiceEnumState> emit, _GetServices event) async {
    try {
      emit(const QuickServiceEnumState.servicesLoading());
      await Future.sync(() async =>
          (await _getServices.execute(NoParams())).when((success)  {
            emit(QuickServiceEnumState.servicesLoaded(success.data));
          }, (error) => emit(QuickServiceEnumState.failed(error.message))));
    } catch (e) {
      emit(QuickServiceEnumState.failed(e.toString()));
    }
  }
}
