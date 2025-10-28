import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/use_cases/get_installment_requirements.dart';
import '../../../entities/installment/installment.dart';
import '../../../entities/installment_requirement/installment_requirement.dart';

part 'installment_bloc.freezed.dart';

part 'installment_event.dart';

part 'installment_state.dart';

class InstallmentBloc extends Bloc<InstallmentEvent, InstallmentState> {

  final GetInstallmentRequirements _getInstallmentRequirements = getIt<GetInstallmentRequirements>();


  InstallmentBloc() : super(const InstallmentState.initial()) {
    on<InstallmentEvent>((event, emit) async {
      await event.map(
          started: (value) async => emit(const InstallmentState.initial()),
          setInstallmentInfo: (value) async =>
              emit(InstallmentState.loaded(value.installmentInfo)),
          getRequiredDocuments: (value) async => await _onGetRequiredDocumentsEvent(emit,value));

    });
  }

  Future<void> _onGetRequiredDocumentsEvent(Emitter<InstallmentState> emit,_GetRequiredDocuments event) async {
    try {
      emit(const InstallmentState.loading());
      var result = await _getInstallmentRequirements.execute(NoParams());
      await result.whenSuccess((success) async {
        emit(InstallmentState.requiredDocumentsLoaded(success));
      });
      result.whenError((error) => emit(InstallmentState.failed(error.message)));
    } catch (e) {
      emit(InstallmentState.failed(e.toString()));
    }
  }

}
