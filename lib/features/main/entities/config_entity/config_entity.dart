import 'package:freezed_annotation/freezed_annotation.dart';

import '../currency_entity/currency_entity.dart';

part 'config_entity.freezed.dart';
part 'config_entity.g.dart';

@freezed
class ConfigEntity with _$ConfigEntity {
  const factory ConfigEntity({
    @JsonKey(name: 'phone_number') required String phone,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'currency') required CurrencyEntity currency
  }) = _ConfigEntity;

  factory ConfigEntity.fromJson(Map<String, dynamic> json) =>
      _$ConfigEntityFromJson(json);

}