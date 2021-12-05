import 'package:bonybom_app/data/datasources/remote/auth/auth_remote_api_service.dart';
import 'package:bonybom_app/data/datasources/remote/auth/auth_remote_datasource.dart';
import 'package:bonybom_app/data/repositories/auth_repository_impl.dart';
import 'package:bonybom_app/domain/repositories/auth_repository.dart';
import 'package:bonybom_app/domain/usecases/auth/login_operation.dart';
import 'package:bonybom_app/presentation/auth/controller/index.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/datasources/remote/suggestion/suggestion_remote_api_service.dart';
import 'data/datasources/remote/suggestion/suggestions_remote_datasource.dart';
import 'data/repositories/suggestion_repository_impl.dart';
import 'domain/repositories/suggestion_repository.dart';
import 'domain/usecases/suggestion/get_all_remote_suggestions.dart';
import 'domain/usecases/suggestion/get_single_suggestion.dart';
import 'presentation/home/controller/index.dart';
import 'presentation/splash/controller/index.dart';

final sl = GetIt.instance;

void init() {
  //! Bloc-Cubit
  sl.registerFactory(() => SplashCubit());
  sl.registerFactory(() => HomeCubit(sl()));
  sl.registerFactory(() => AuthCubit(loginOperation: sl()));
  //! Core
  sl.registerFactory(() => SuggestionRemoteApiService(Dio(BaseOptions(contentType: "application/json"))));
  sl.registerFactory(() => AuthRemoteApiService(Dio(BaseOptions(contentType: "application/json"))));
  //! External

  //! UseCases
  //Auth
  sl.registerLazySingleton(() => LoginOperation(sl()));
  //Suggestion

  sl.registerLazySingleton(() => GetSingleSuggestion(sl()));
  sl.registerLazySingleton(() => GetAllRemoteSuggestions(sl()));
  //! Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<SuggestionRepository>(() => SuggestionRepositoryImpl(remoteDataSource: sl()));

  //! Datasources
  sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSource(authRemoteApiService: sl()));
  sl.registerLazySingleton<SuggestionsRemoteDataSource>(() => SuggestionsRemoteDataSource(suggestionApiService: sl()));
}
