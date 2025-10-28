import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/core/utils/local_storage/app_preferences.dart';
import 'package:mac_mobile/features/customer_car/domain/usecases/update_odometer.dart';
import 'package:mac_mobile/features/customer_car/entities/customer_car/customer_car.dart';
import 'package:mac_mobile/features/customer_car/entities/parameters/odometer_parameters.dart';

part 'odometer_event.dart';

part 'odometer_state.dart';

part 'odometer_bloc.freezed.dart';

class OdometerBloc extends Bloc<OdometerEvent, OdometerState> {
  final UpdateOdometer _updateOdometer = getIt<UpdateOdometer>();
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();



  OdometerBloc() : super(const OdometerState.initial()) {
    on<OdometerEvent>((event, emit) async {
      await event.map(started: (value) {

      }, update: (value) async => await _onUpdateOdometer(emit,value));
    });
  }

  Future<void> _onUpdateOdometer(Emitter<OdometerState> emit ,_Update event) async{
    try {
      emit(const OdometerState.loading());
      (await _updateOdometer.execute(event.parameters)).when(
    (success) async {
    getIt<AppPreferences>().userPreferences.saveUserData(getIt<AppPreferences>().userPreferences.getUserData?.copyWith(customerCar: success));
    emit(OdometerState.updated(success));
    }, (error) => emit(OdometerState.failed(error.message)));
    } catch (e) {
    emit(OdometerState.failed(e.toString()));
    }
}
}
