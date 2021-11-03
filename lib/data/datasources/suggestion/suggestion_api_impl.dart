import 'package:vexana/vexana.dart';

import '../../../core/constants/enums/network_path.dart';
import '../../../core/extension/network_extension.dart';
import '../../../core/init/network/network_manager.dart';
import '../../../domain/entities/suggestion.dart';
import '../../models/suggestion_model.dart';
import 'suggestion_api.dart';

class SuggestionApiImpl implements SuggestionApi {
  @override
  Future<List<Suggestion>> getAllSuggestions() async {
    List<SuggestionModel> suggesstions = [];

    final response = await BaseService.instance.networkManager.send<SuggestionModel, List<SuggestionModel>>(
      NetworkPath.ALLSUGGESTION.rawValue,
      parseModel: SuggestionModel(),
      method: RequestType.GET,
    );

    suggesstions = response.data ?? [];

    return suggesstions.map((model) => model.toEntity()).toList();
  }

  @override
  Future<Suggestion> getSuggestion(String id) async {
    SuggestionModel suggestion = SuggestionModel();

    final response = await BaseService.instance.networkManager
        .send<SuggestionModel, SuggestionModel>(NetworkPath.SUGGESTION.rawValue + id, parseModel: SuggestionModel(), method: RequestType.GET);

    suggestion = response.data ?? SuggestionModel();

    return suggestion.toEntity();
  }
}
