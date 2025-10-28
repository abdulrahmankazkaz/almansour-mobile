part of 'car_checking_bloc.dart';

@freezed
class CarCheckingEvent with _$CarCheckingEvent {
  const factory CarCheckingEvent.started() = _Started;
  const factory CarCheckingEvent.checkCar(String vinNumber) = _CheckCar;
}
