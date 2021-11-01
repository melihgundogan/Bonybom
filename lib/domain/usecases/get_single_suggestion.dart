import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/suggestion.dart';
import '../params/suggestion_params.dart';
import '../repositories/suggestion_repository.dart';

class GetSingleSuggestion implements UseCase<Suggestion, SuggestionParams> {
  final SuggestionRepository suggestionRepository;

  GetSingleSuggestion(this.suggestionRepository);

  @override
  Future<Either<Failure, Suggestion>> call(SuggestionParams params) async {
    return await suggestionRepository.getSuggestion(params.id);
  }
}
