import 'package:bonybom_app/core/constants/app/app_constants.dart';
import 'package:bonybom_app/data/datasources/remote/category/category_endpoints.dart';
import 'package:bonybom_app/data/models/category_model.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'category_remote_api_service.g.dart';

@RestApi(baseUrl: ApplicationConstants.API_URL)
abstract class CategoryRemoteApiService {
  factory CategoryRemoteApiService(Dio dio, {String baseUrl}) = _CategoryRemoteApiService;

  @GET(CategoryEnpoints.getAllCategories)
  Future<List<CategoryModel>> getAllRemoteCategories();
}
