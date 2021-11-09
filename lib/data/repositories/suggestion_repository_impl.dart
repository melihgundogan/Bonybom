import 'package:dartz/dartz.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../domain/entities/suggestion.dart';
import '../../domain/repositories/suggestion_repository.dart';
import '../datasources/suggestion/suggestion_api.dart';

class SuggestionRepositoryImpl implements SuggestionRepository {
  final SuggestionApi suggestionApi;

  SuggestionRepositoryImpl({required this.suggestionApi});

  @override
  Future<List<Suggestion>> getAllSuggestions() async {
    try {
      final remoteSuggestions = await suggestionApi.getAllSuggestions();

      return remoteSuggestions;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Suggestion> getSuggestion(String id) async {
    try {
      final remoteSuggestion = await suggestionApi.getSuggestion(id);

      return remoteSuggestion;
    } catch (e) {
      throw Exception(e);
    }
  }
}
