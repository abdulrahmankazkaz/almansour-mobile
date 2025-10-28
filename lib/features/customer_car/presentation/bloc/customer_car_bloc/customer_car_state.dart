part of 'customer_car_bloc.dart';

@freezed
class CustomerCarState with _$CustomerCarState {
  const factory CustomerCarState.initial() = _Initial;
  const factory CustomerCarState.loading() = _Loading;
  const factory CustomerCarState.setSuccessfully() = _SetSuccessfully;
  const factory CustomerCarState.getSuccessfully(CustomerCar car) = _GetSuccessfully;
  const factory CustomerCarState.mustAddCar() = _MustAddCar;
  const factory CustomerCarState.failed(String errorMessage) = _Failed;
}
