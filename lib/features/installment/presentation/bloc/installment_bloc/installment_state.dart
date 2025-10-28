part of 'installment_bloc.dart';

@freezed
class InstallmentState with _$InstallmentState {
  const factory InstallmentState.initial() = _Initial;
  const factory InstallmentState.loaded(Installment installmentInfo) = _Loaded;
  const factory InstallmentState.loading() = _Loading;
  const factory InstallmentState.requiredDocumentsLoaded(List<InstallmentRequirement> requiredDocuments) = _RequiredDocumentsLoaded;
  const factory InstallmentState.failed(String errorMessage) = _Failed;
}
