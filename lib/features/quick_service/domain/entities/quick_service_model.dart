import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';



part 'quick_service_model.freezed.dart';
part 'quick_service_model.g.dart';

@freezed
class QuickServiceModel  with _$QuickServiceModel {
const factory  QuickServiceModel({
  @JsonKey(name: 'id') required int id,
  @JsonKey(name: 'appointment_time')  DateTime? appointmentDate,
  @JsonKey(name: 'created_at')  DateTime? bookDate,
  @JsonKey(name: 'dealership') required BasicModel dealership,
  @JsonKey(name: 'status') required BasicModel status,
  @JsonKey(name: 'type') required BasicModel type,
  @JsonKey(name: 'is_rated') required bool isRated,


}) = _QuickServiceModel;

factory  QuickServiceModel.fromJson(Map<String, Object?> json) => _$QuickServiceModelFromJson(json);
}

