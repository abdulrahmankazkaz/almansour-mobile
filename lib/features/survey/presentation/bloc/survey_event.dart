part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.started() = _Started;
  const factory SurveyEvent.send(String note) = _Send;
}
