import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/features/survey/domain/use_cases/send_survey.dart';
import 'package:mac_mobile/features/survey/entities/survey_parameters.dart';

part 'survey_bloc.freezed.dart';
part 'survey_event.dart';
part 'survey_state.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final SendSurvey _sendSurvey = getIt<SendSurvey>();
  int _experienceRate = -1;
  int _cooperationRate = 3;
  int _serviceCenterRate = 3;
  int _customerCareRate = 3;
  int _salesRate = 3;
  int _typeId = 1;
  int _modelId = -1;

  SurveyBloc() : super(const SurveyState.initial()) {
    on<SurveyEvent>((event, emit) async {
      await event.map(
          started: (value) {
            _experienceRate = -1;
            _cooperationRate = 3;
            _serviceCenterRate = 3;
            _customerCareRate = 3;
            _salesRate = 3;
          },
          send: (value) async => await _onSendSurvey(emit, value));
    });
  }

  Future<void> _onSendSurvey(Emitter<SurveyState> emit, _Send event) async {
    if (_experienceRate == -1) {
      emit(SurveyState.notValidate());
    } else {
      try {
        emit(const SurveyState.loading());
        (await _sendSurvey.execute(SurveyParameters(
                experience: _experienceRate,
                cooperation: _cooperationRate,
                serviceCenter: _serviceCenterRate,
                customerCare: _customerCareRate,
                sales: _salesRate,
                note: event.note,
                typeId: _typeId,
                modelId: _modelId)))
            .when((success) async {
          emit(const SurveyState.sentSuccessfully());
        }, (error) => emit(SurveyState.failed(error.message)));
      } catch (e) {
        emit(SurveyState.failed(e.toString()));
      }
    }
  }

  set experienceRate(int rate) => _experienceRate = rate;

  set cooperationRate(int rate) => _cooperationRate = rate;

  set serviceCenterRate(int rate) => _serviceCenterRate = rate;

  set customerCareRate(int rate) => _customerCareRate = rate;

  set salesRate(int rate) => _salesRate = rate;

  set typeId(int id) => _typeId = id;

  set modelId(int id) => _modelId = id;
}
