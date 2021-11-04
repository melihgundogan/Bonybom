import '../../../domain/entities/suggestion.dart';

abstract class SuggestionApi {
  ///Calls the suggestions endpoint and gets the selected suggestion from the api
  ///
  ///Throws a regular Exception
  Future<Suggestion> getSuggestion(String id);

  ///Calls the suggestions endpoint and gets all suggestions from the api
  ///
  ///Throws a regular Exception
  Future<List<Suggestion>> getAllSuggestions();
}
