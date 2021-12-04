import 'package:bonybom_app/data/datasources/remote/suggestion/suggestion_remote_api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/datasources/remote/suggestion/suggestions_remote_datasource.dart';
import 'data/repositories/suggestion_repository_impl.dart';
import 'domain/repositories/suggestion_repository.dart';
import 'domain/usecases/auth/login_operation.dart';
import 'domain/usecases/suggestion/get_all_remote_suggestions.dart';
import 'domain/usecases/suggestion/get_single_suggestion.dart';
import 'screens/home/controller/cubit_controller.dart';
import 'screens/splash/controller/index.dart';

final sl = GetIt.instance;

void init() {
  //! Bloc-Cubit
  sl.registerFactory(() => SplashCubit());
  sl.registerFactory(() => HomeCubit(sl()));
  //! Core
  sl.registerFactory(() => SuggestionRemoteApiService(Dio(BaseOptions(contentType: "application/json"))));
  //! External

  //! UseCases
  //Auth
  // sl.registerLazySingleton(() => LoginOperation(sl()));
  //Suggestion

  sl.registerLazySingleton(() => GetSingleSuggestion(sl()));
  sl.registerLazySingleton(() => GetAllRemoteSuggestions(sl()));
  //! Repositories
  sl.registerLazySingleton<SuggestionRepository>(() => SuggestionRepositoryImpl(remoteDataSource: sl()));

  //! Datasources
  sl.registerLazySingleton<SuggestionsRemoteDataSource>(() => SuggestionsRemoteDataSource(suggestionApiService: sl()));
}
