part of 'car_checking_bloc.dart';

@freezed
class CarCheckingState with _$CarCheckingState {
  const factory CarCheckingState.initial() = _Initial;
  const factory CarCheckingState.loading() = _Loading;
  const factory CarCheckingState.getting() = _Getting;
  const factory CarCheckingState.success(CarChecked carCheckedResult) = _Success;
  const factory CarCheckingState.loaded(List<CarChecked> checkedCars) = _Loaded;
  const factory CarCheckingState.failed(String errorMessage) = _Failed;
}
