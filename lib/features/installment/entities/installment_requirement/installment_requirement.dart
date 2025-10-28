import 'package:freezed_annotation/freezed_annotation.dart';


part 'installment_requirement.freezed.dart';
part 'installment_requirement.g.dart';

@freezed
class InstallmentRequirement with _$InstallmentRequirement {
  const factory InstallmentRequirement({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'image') String? icon,
    @JsonKey(name: 'details') required List<String> requirements,
    @JsonKey(name: 'sub_requirement') @Default([]) List<InstallmentRequirement> subRequirements,


  }) = _InstallmentRequirement;

  factory InstallmentRequirement.fromJson(Map<String, Object?> json) =>
      _$InstallmentRequirementFromJson(json);


}