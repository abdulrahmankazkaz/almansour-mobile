class SurveyParameters {
  final String? note;
  final int experience;
  final int cooperation;
  final int serviceCenter;
  final int customerCare;
  final int sales;
  final int typeId;
  final int? modelId;

  SurveyParameters({
    this.note,
    required this.experience,
    required this.cooperation,
    required this.serviceCenter,
    required this.customerCare,
    required this.sales,
    required this.typeId,
    this.modelId
  });

  Map<String, dynamic> toJson() => {
    "note": note,
    "experience": experience,
    "cooperation": cooperation,
    "service_center": serviceCenter,
    "customer_care": customerCare,
    "sales": sales,
    "type_id":typeId,
    if(typeId!=1) "model_id":modelId
  };
}
