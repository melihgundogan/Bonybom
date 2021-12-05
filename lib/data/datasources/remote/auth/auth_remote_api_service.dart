import 'package:bonybom_app/data/datasources/remote/auth/auth_endpoints.dart';
import 'package:bonybom_app/data/models/auth_model.dart';
import 'package:bonybom_app/data/models/request/auth_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_api_service.g.dart';

@RestApi(baseUrl: 'https://bonybom.com/api/')
abstract class AuthRemoteApiService {
  factory AuthRemoteApiService(Dio dio, {String baseUrl}) = _AuthRemoteApiService;

  @POST(AuthEndpoints.authUser)
  Future<AuthModel> authUser(@Body() AuthRequestModel authRequestModel);
}
