import '../entities/suggestion.dart';

abstract class SuggestionRepository {
  Future<Suggestion> getSuggestion(String id);
  Future<List<Suggestion>> getAllSuggestions();
}
