import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/guest/domain/use_cases/check_car.dart';
import 'package:mac_mobile/features/guest/entities/car_checked/car_checked.dart';
import 'package:mac_mobile/features/guest/entities/parameters/check_car_params.dart';

import '../../../../app/dependency_injection.dart';

part 'car_checking_event.dart';
part 'car_checking_state.dart';
part 'car_checking_bloc.freezed.dart';

class CarCheckingBloc extends Bloc<CarCheckingEvent, CarCheckingState> {

  final CheckCar _checkCar = getIt<CheckCar>();
  int _brandId = -1;

  CarCheckingBloc() : super(const CarCheckingState.initial()) {
    on<CarCheckingEvent>((event, emit) async {
      await event.map(
          started: (value) {},
          checkCar: (value) async => await _onCheckCarEvent(emit,value));
    });
  }

  Future<void> _onCheckCarEvent(Emitter<CarCheckingState> emit,_CheckCar event) async {
    try {
      emit(const CarCheckingState.loading());
      (await _checkCar.execute(CheckCarParameters(vinNumber: event.vinNumber,brandId: _brandId))).when(
              (success) async {
            emit(CarCheckingState.success(success.data));
          }, (error) => emit(CarCheckingState.failed(error.message)));
    } catch (e) {
      emit(CarCheckingState.failed(e.toString()));
    }
  }


  set brandId(int id)=> _brandId = id;
}
