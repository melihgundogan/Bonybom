import 'package:get_it/get_it.dart';

import 'data/datasources/remote/suggestion/suggestion_api.dart';
import 'data/datasources/remote/suggestion/suggestion_api_impl.dart';
import 'data/repositories/suggestion_repository_impl.dart';
import 'domain/repositories/suggestion_repository.dart';
import 'domain/usecases/auth/login_operation.dart';
import 'domain/usecases/suggestion/get_all_suggestions.dart';
import 'domain/usecases/suggestion/get_single_suggestion.dart';
import 'screens/splash/controller/index.dart';

final sl = GetIt.instance;

void init() {
  //! Bloc-Cubit
  sl.registerSingleton(SplashCubit());
  //! Core

  //! External

  //! UseCases
  //Auth
  sl.registerLazySingleton(() => LoginOperation(sl()));
  //Suggestion
  sl.registerLazySingleton(() => GetAllSuggestions(sl()));
  sl.registerLazySingleton(() => GetSingleSuggestion(sl()));

  //! Repositories
  sl.registerLazySingleton<SuggestionRepository>(() => SuggestionRepositoryImpl(suggestionApi: sl()));

  //! Datasources
  sl.registerLazySingleton<SuggestionApi>(() => SuggestionApiImpl());
}
