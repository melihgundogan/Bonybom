import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/core/usecases/usecase.dart';
import 'package:bonybom_app/domain/entities/suggestion.dart';
import 'package:bonybom_app/domain/repositories/suggestion_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllSuggestions implements UseCase<List<Suggestion>, NoParams> {
  final SuggestionRepository _suggestionRepository;

  GetAllSuggestions(this._suggestionRepository);

  @override
  Future<Either<Failure, List<Suggestion>>> call(NoParams params) async {
    return await _suggestionRepository.getAllSuggestions();
  }
}
