import 'package:dio/dio.dart';
import 'package:mac_mobile/features/auth/entities/auth_tokens/auth_tokens.dart';
import 'package:mac_mobile/features/auth/entities/auth_verify/auth_verify.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../auth_endpoints/auth_endpoints.dart';

part 'auth_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AuthDatasource {
  factory AuthDatasource(Dio dio, {String baseUrl}) = _AuthDatasource;

  @POST(AuthEndPoints.login)
  Future<HttpResponse<DefaultSuccessModel>> login(@Field() String mobile);

  @POST(AuthEndPoints.resendOTP)
  Future<HttpResponse<DefaultSuccessModel>> resendOTP(@Field() String mobile);

  @POST(AuthEndPoints.verify)
  Future<HttpResponse<DefaultDataModel<AuthVerify>>> verifyMobileNumber(
      @Field() String mobile, @Field() String code, @Field() String fcm_token);

  @POST(AuthEndPoints.refreshToken)
  Future<HttpResponse<DefaultDataModel<AuthTokens>>> refreshToken(
    @Field() String refreshToken,
  );

  @POST(AuthEndPoints.logout)
  Future<HttpResponse<DefaultSuccessModel>> logout();
}
