import 'package:bonybom_app/core/constants/app/app_constants.dart';
import 'package:bonybom_app/data/datasources/remote/user/user_endpoints.dart';
import 'package:bonybom_app/data/models/user_model.dart';
import 'package:bonybom_app/domain/entities/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'user_remote_api_service.g.dart';

@RestApi(baseUrl: ApplicationConstants.API_URL)
abstract class UserRemoteApiService {
  factory UserRemoteApiService(Dio dio, {String baseUrl}) = _UserRemoteApiService;

  @POST(UserEndPoints.registerUser)
  Future<UserModel> createNewUser(@Body() UserModel userModel);
}
