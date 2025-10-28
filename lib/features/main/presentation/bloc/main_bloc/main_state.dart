part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.loading() = _Loading;
  const factory MainState.orderTypeLoaded(List<BasicModel> orderTypes) = _OrderTypeLoaded;
  const factory MainState.paymentMethodsLoaded(List<BasicModel> paymentMethods) = _PaymentMethodsLoaded;
  const factory MainState.failed(String errorMessage) = _Failed;
}
