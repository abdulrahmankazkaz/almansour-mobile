part of 'customer_car_bloc.dart';

@freezed
class CustomerCarEvent with _$CustomerCarEvent {
  const factory CustomerCarEvent.started() = _Started;
  const factory CustomerCarEvent.getCustomerCar() = _GetCustomerCarEvent;
  const factory CustomerCarEvent.setCustomerCar(
      CustomerCarParameters customerCarParameters) = _SetCustomerCarEvent;
}
