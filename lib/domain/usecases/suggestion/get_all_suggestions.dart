import '../../../core/usecases/usecase.dart';
import '../../entities/suggestion.dart';
import '../../repositories/suggestion_repository.dart';

class GetAllSuggestions implements UseCase<List<Suggestion>, NoParams> {
  final SuggestionRepository _suggestionRepository;

  GetAllSuggestions(this._suggestionRepository);

  @override
  Future<List<Suggestion>> call(NoParams params) async {
    return await _suggestionRepository.getAllSuggestions();
  }
}
