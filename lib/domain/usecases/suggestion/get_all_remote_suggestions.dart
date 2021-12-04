import 'package:bonybom_app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../core/usecases/usecase.dart';
import '../../entities/suggestion.dart';
import '../../repositories/suggestion_repository.dart';

class GetAllRemoteSuggestions implements UseCase<List<Suggestion>, NoParams> {
  final SuggestionRepository _suggestionRepository;

  GetAllRemoteSuggestions(this._suggestionRepository);

  @override
  Future<Either<Failure, List<Suggestion>>> call(NoParams params) async {
    return await _suggestionRepository.getAllSuggestions();
  }
}
