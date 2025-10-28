part of 'survey_bloc.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState.initial() = _Initial;
  const factory SurveyState.loading() = _Loading;
  const factory SurveyState.sentSuccessfully() = _SentSuccessfully;
  const factory SurveyState.notValidate() = _NotValidate;
  const factory SurveyState.failed(String failedMessage) = _Failed;
}
