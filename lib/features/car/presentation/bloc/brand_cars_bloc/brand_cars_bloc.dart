import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/failure_model/failure.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/usecases/get_brand_cars.dart';
import '../../../domain/usecases/get_car.dart';
import '../../../entities/car/car.dart';

part 'brand_cars_bloc.freezed.dart';
part 'brand_cars_event.dart';
part 'brand_cars_state.dart';

class BrandCarsBloc extends Bloc<BrandCarsEvent, BrandCarsState> {
  final GetBrandCars _getBrandCars = getIt<GetBrandCars>();
  final GetCar _getCar = getIt<GetCar>();

  BrandCarsBloc() : super(const BrandCarsState.initial()) {
    on<BrandCarsEvent>((event, emit) async {
      await event.map(
          started: (value) {},
          getBrandCars: (value) async => await _onGetBrandCars(emit, value),
          getCar: (value) async => await _onGetCarEvent(emit,value) );
    });
  }


  Future<void> _onGetCarEvent(Emitter<BrandCarsState> emit, _GetCar event) async {
    Result<Car?, FailureModel> result;
    try{
      emit(const BrandCarsState.loading());
      result = await _getCar.execute(event.carId);
      result.whenSuccess((success) => emit(BrandCarsState.carLoaded(success)));
    }
        catch(e){
      emit(BrandCarsState.failed(e.toString()));
        }
  }

  Future<void> _onGetBrandCars(
      Emitter<BrandCarsState> emit, _GetBrandCars event) async {
    Result<List<Car>, FailureModel> result;
    try {
        emit(const BrandCarsState.loading());
        result = await _getBrandCars.execute(NoParams());
        await result.whenSuccess((success) async {
          emit(BrandCarsState.loaded(success
              .where((element) => element.brand.id == event.brandId)
              .toList()));
        });
        result.whenError((error) => emit(BrandCarsState.failed(error.message)));
    } catch (e) {
      emit(BrandCarsState.failed(e.toString()));
    }
  }
}
