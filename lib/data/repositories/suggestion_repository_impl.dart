import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/suggestion.dart';
import '../../domain/repositories/suggestion_repository.dart';
import '../datasources/remote/suggestion/suggestions_remote_datasource.dart';

class SuggestionRepositoryImpl implements SuggestionRepository {
  final SuggestionsRemoteDataSource remoteDataSource;

  SuggestionRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Suggestion>>> getAllSuggestions() async {
    try {
      final response = await remoteDataSource.getAllSuggestions();
      return response.fold((failure) => Left(failure), (suggestions) async {
        if (suggestions != null && suggestions.isNotEmpty) {
          return Right(suggestions);
        }
        return const Left(Failure("Her hangi bir öneri bulunamadı."));
      });
    } on Exception catch (_) {
      return const Left(Failure("Bir hata oluştu"));
    }
  }

  @override
  Future<Either<Failure, Suggestion>> getSuggestion(String id) async {
    try {
      final response = await remoteDataSource.getSingleSuggestion(id);
      return response.fold((failure) => Left(failure), (suggestion) async {
        if (suggestion != null) {
          return Right(suggestion);
        }

        return const Left(Failure("Öneri bulunamadı."));
      });
    } on Exception catch (_) {
      return const Left(Failure("Bir hata oluştu."));
    }
  }
}
