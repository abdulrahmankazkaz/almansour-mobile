part of 'installment_bloc.dart';

@freezed
class InstallmentEvent with _$InstallmentEvent {
  const factory InstallmentEvent.started() = _Started;
  const factory InstallmentEvent.setInstallmentInfo(Installment installmentInfo) = _SetInstallmentInfo;
  const factory InstallmentEvent.getRequiredDocuments() = _GetRequiredDocuments;
}
