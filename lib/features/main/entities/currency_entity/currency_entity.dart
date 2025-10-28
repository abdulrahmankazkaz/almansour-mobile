import 'package:freezed_annotation/freezed_annotation.dart';


part 'currency_entity.freezed.dart';
part 'currency_entity.g.dart';

@freezed
class CurrencyEntity with _$CurrencyEntity {
  const factory CurrencyEntity({
    @JsonKey(name: 'en') required String en,
    @JsonKey(name: 'ar') required String ar,
  }) = _CurrencyEntity;

  factory CurrencyEntity.fromJson(Map<String, dynamic> json) =>
      _$CurrencyEntityFromJson(json);

}