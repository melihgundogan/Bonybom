import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failures.dart';
import '../../../../domain/entities/suggestion.dart';
import 'suggestion_remote_api_service.dart';

const ERROR_MSG = 'Something went wrong';

class SuggestionsRemoteDataSource {
  final SuggestionRemoteApiService suggestionApiService;

  SuggestionsRemoteDataSource({required this.suggestionApiService});

  Future<Either<Failure, List<Suggestion>>> getAllSuggestions() async {
    try {
      final suggesstions = await suggestionApiService.getSuggestions();
      return Right(suggesstions);
    } on DioError catch (error) {
      print(error.type);
      print(error.message);
      return Left(Failure(error.message));
    } on Exception catch (_) {
      return const Left(Failure(ERROR_MSG));
    }
  }

  Future<Either<Failure, Suggestion>> getSingleSuggestion(String id) async {
    try {
      final suggestion = await suggestionApiService.getSingleSuggestion(id);
      return Right(suggestion);
    } on DioError catch (error) {
      print(error.type);
      print(error.message);
      return Left(Failure(error.message));
    } on Exception catch (_) {
      return const Left(Failure(ERROR_MSG));
    }
  }
}
