part of 'odometer_bloc.dart';

@freezed
class OdometerState with _$OdometerState {
  const factory OdometerState.initial() = _Initial;
  const factory OdometerState.loading() = _Loading;
  const factory OdometerState.updated(CustomerCar customerCar) = _Updated;
  const factory OdometerState.failed(String errorMessage) = _Failed;
}
