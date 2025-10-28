import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/profile/entities/no_params.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../domain/usecases/get_brand.dart';
import '../../../domain/usecases/get_car.dart';
import '../../../domain/usecases/get_car_names.dart';
import '../../../domain/usecases/get_trim_level.dart';
import '../../../entities/car/car.dart';
import '../../../entities/car_brand/car_brand.dart';

part 'brand_bloc.freezed.dart';
part 'brand_event.dart';
part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final GetBrands _getBrands = getIt<GetBrands>();
  final GetCarNames _getCarNames = getIt<GetCarNames>();
  final GetCar _getCar = getIt<GetCar>();
  final GetTrimLevels _getTrimLevels = getIt<GetTrimLevels>();
  List<CarBrand> brands = [];

  BrandBloc() : super(const BrandState.initial()) {
    on<BrandEvent>((event, emit) async {
      await event.map(
        started: (value) {emit(const BrandState.carLoading());},
        getBrand: (event) async => await _onGetBrands(emit, event),
        getCarNames: (event) async => await _onGetCarNames(emit, event),
        getTrimLevels: (event) async => await _onGetTrimLevels(emit, event),
        getCar: (value) async => await _onGetCar(emit,value),
      );
    });
  }

  Future<void> _onGetBrands(Emitter<BrandState> emit, _GetBrands event) async {
    try {
      if (brands.isEmpty || event.refresh==true) {
        emit(const BrandState.brandLoading());
        var result = await _getBrands.execute(NoParams());
        await result.whenSuccess((success) async {
          brands = success;
          emit(BrandState.brandLoaded(success));
        });
        result.whenError((error) => emit(BrandState.failed(error.message)));
      } else {
        emit(BrandState.brandLoaded(brands));
      }
    } catch (e) {
      emit(BrandState.failed(e.toString()));
    }
  }

  Future<void> _onGetCarNames(
      Emitter<BrandState> emit, _GetCarNames event) async {
    try {
      emit(const BrandState.carLoading());
      var result = await _getCarNames.execute(event.brandId);
      await result.whenSuccess((success) async {
        emit(BrandState.carNamesLoaded(success));
      });
      result.whenError((error) => emit(BrandState.failed(error.message)));
    } catch (e) {
      emit(BrandState.failed(e.toString()));
    }
  }

  Future<void> _onGetTrimLevels(
      Emitter<BrandState> emit, _GetTrimLevels event) async {
    try {
      emit(const BrandState.trimLevelLoading());
      var result = await _getTrimLevels.execute(event.carNameId);
      await result.whenSuccess((success) async {
        emit(BrandState.trimLevelsLoaded(success));
      });
      result.whenError((error) => emit(BrandState.failed(error.message)));
    } catch (e) {
      emit(BrandState.failed(e.toString()));
    }
  }

  Future<void> _onGetCar(
      Emitter<BrandState> emit, _GetCar event) async {
    try {
      emit(const BrandState.carLoading());
      var result = await _getCar.execute(event.id);
      await result.whenSuccess((success) async {
        emit(BrandState.carFetched(success));
      });
      result.whenError((error) => emit(BrandState.failed(error.message)));
    } catch (e) {
      emit(BrandState.failed(e.toString()));
    }
  }
}
