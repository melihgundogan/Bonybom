import 'package:bonybom_app/core/constants/enums/network_path.dart';
import 'package:bonybom_app/core/extension/network_extension.dart';
import 'package:bonybom_app/data/datasources/remote/suggestion/suggestion_endpoints.dart';
import 'package:bonybom_app/data/models/suggestion_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'suggestion_remote_api_service.g.dart';

@RestApi(baseUrl: 'https://bonybom.com/api/')
abstract class SuggestionRemoteApiService {
  factory SuggestionRemoteApiService(Dio dio, {String baseUrl}) = _SuggestionRemoteApiService;

  @GET(SuggestionEndpoints.allSuggestions)
  Future<List<SuggestionModel>> getSuggestions();

  @GET(SuggestionEndpoints.singleSuggestion)
  Future<SuggestionModel> getSingleSuggestion(@Path("id") String id);
}
