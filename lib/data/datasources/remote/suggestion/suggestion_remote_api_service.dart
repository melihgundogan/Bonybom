import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/suggestion_model.dart';
import 'suggestion_endpoints.dart';

part 'suggestion_remote_api_service.g.dart';

@RestApi(baseUrl: 'https://bonybom.com/api/')
abstract class SuggestionRemoteApiService {
  factory SuggestionRemoteApiService(Dio dio, {String baseUrl}) = _SuggestionRemoteApiService;

  @GET(SuggestionEndpoints.allSuggestions)
  Future<List<SuggestionModel>> getSuggestions();

  @GET(SuggestionEndpoints.singleSuggestion)
  Future<SuggestionModel> getSingleSuggestion(@Path("id") String id);
}
