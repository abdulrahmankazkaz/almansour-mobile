import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../app/dependency_injection.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/entities/quick_service_model.dart';
import '../../../domain/entities/quick_service_parameters.dart';
import '../../../domain/usecases/create_quick_service.dart';
import '../../../domain/usecases/get_quick_service.dart';

part 'quick_service_event.dart';

part 'quick_service_state.dart';

part 'quick_service_bloc.freezed.dart';

class QuickServiceBloc extends Bloc<QuickServiceEvent, QuickServiceState> {
  final CreateQuickService _createQuickService = getIt<CreateQuickService>();
  final GetQuickServices _getQuickServices = getIt<GetQuickServices>();

  QuickServiceBloc() : super(const QuickServiceState.initial()) {
    on<QuickServiceEvent>((event, emit) async {
      await event.map(
          started: (value) {

          },
          get: (value) async => await _onGetEvent(emit, value),
          createQuickService: (value) async => await _onCreateEvent(emit, value));
    });
  }

  Future<void> _onCreateEvent(
      Emitter<QuickServiceState> emit, _CreateQuickService event) async {
    try {
        emit(const QuickServiceState.loading());
        (await _createQuickService.execute(event.params))
            .when((success) async {
          emit(const QuickServiceState.createSuccessfully());
        }, (error) => emit(QuickServiceState.failed(error.message)));

    } catch (e) {
      emit(QuickServiceState.failed(e.toString()));
    }
  }

  Future<void> _onGetEvent(Emitter<QuickServiceState> emit, _Get event) async {
    try {
      emit(const QuickServiceState.fetchLoading());
      (await _getQuickServices.execute(NoParams())).when(
              (success) async {
            if (success.data.isEmpty) {
              emit(const QuickServiceState.empty());
            } else {
              emit(QuickServiceState.loaded(success.data));
            }
          }, (error) => emit(QuickServiceState.failed(error.message)));
    } catch (e) {
      emit(QuickServiceState.failed(e.toString()));
    }
  }
}
