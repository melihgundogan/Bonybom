import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entities/suggestion.dart';

abstract class SuggestionRepository {
  Future<Either<Failure, Suggestion>> getSuggestion(String id);
  Future<Either<Failure, List<Suggestion>>> getAllSuggestions();
}
