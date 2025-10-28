import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/profile/entities/user.dart';

part 'auth_verify.freezed.dart';
part 'auth_verify.g.dart';

@freezed
class AuthVerify with _$AuthVerify {
  const factory AuthVerify({
    @JsonKey(name: 'customer') User? user,
    @JsonKey(name: 'token') required String token,
  }) = _AuthVerify;

  factory AuthVerify.fromJson(Map<String, Object?> json) =>
      _$AuthVerifyFromJson(json);
}
