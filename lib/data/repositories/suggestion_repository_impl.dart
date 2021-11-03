import 'package:bonybom_app/core/error/exceptions.dart';
import 'package:bonybom_app/data/datasources/suggestion/suggestion_api.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/suggestion.dart';
import '../../domain/repositories/suggestion_repository.dart';

class SuggestionRepositoryImpl implements SuggestionRepository {
  final SuggestionApi suggestionApi;

  SuggestionRepositoryImpl(this.suggestionApi);

  @override
  Future<Either<Failure, List<Suggestion>>> getAllSuggestions() async {
    try {
      final remoteSuggestions = await suggestionApi.getAllSuggestions();

      return Right(remoteSuggestions);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Suggestion>> getSuggestion(String id) async {
    try {
      final remoteSuggestion = await suggestionApi.getSuggestion(id);

      return Right(remoteSuggestion);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
