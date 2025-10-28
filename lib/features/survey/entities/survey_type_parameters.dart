class SurveyTypeParameters {
  final int typeId;
  final int? modelId;

  const SurveyTypeParameters({
    required this.typeId,
    this.modelId,
  });

  factory SurveyTypeParameters.fromJson(Map<String, dynamic> json) {
    return SurveyTypeParameters(
      typeId: json['type_id'] as int,
      modelId: json['model_id'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type_id': typeId,
      'model_id': modelId,
    };
  }
}
