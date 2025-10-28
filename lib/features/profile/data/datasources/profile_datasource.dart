import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../entities/profile_parameters.dart';
import '../../entities/user.dart';
import '../profile_endpoints/profile_endpoints.dart';

part 'profile_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ProfileDatasource {
  factory ProfileDatasource(Dio dio, {String baseUrl}) = _ProfileDatasource;

  @GET(ProfileEndPoints.profile)
  Future<HttpResponse<DefaultDataModel<User>>> getProfile();

  @GET(ProfileEndPoints.genders)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getGenders();

  @GET(ProfileEndPoints.cities)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getCities();

  @POST(ProfileEndPoints.updateProfile)
  Future<HttpResponse<DefaultDataModel<User>>> updateProfile(
      @Body() ProfileParameters requestBody);

  @POST(ProfileEndPoints.deactivateAccount)
  Future<HttpResponse<DefaultSuccessModel>> deactivateAccount();

  @POST(ProfileEndPoints.deleteAccount)
  Future<HttpResponse<DefaultSuccessModel>> deleteAccount();
}
