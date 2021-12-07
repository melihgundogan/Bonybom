import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/datasources/local/hive/category/category_local_datasource.dart';
import 'data/datasources/remote/auth/auth_remote_api_service.dart';
import 'data/datasources/remote/auth/auth_remote_datasource.dart';
import 'data/datasources/remote/category/category_remote_api_service.dart';
import 'data/datasources/remote/category/category_remote_datasource.dart';
import 'data/datasources/remote/suggestion/suggestion_remote_api_service.dart';
import 'data/datasources/remote/suggestion/suggestions_remote_datasource.dart';
import 'data/datasources/remote/user/user_remote_api_service.dart';
import 'data/datasources/remote/user/user_remote_datasource.dart';
import 'data/repositories/auth_repository_impl.dart';
import 'data/repositories/category_repository_impl.dart';
import 'data/repositories/suggestion_repository_impl.dart';
import 'data/repositories/user_repository_impl.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/category_repository.dart';
import 'domain/repositories/suggestion_repository.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/auth/login_operation.dart';
import 'domain/usecases/category/get_remote_categories.dart';
import 'domain/usecases/category/insert_local_categories.dart';
import 'domain/usecases/suggestion/get_all_remote_suggestions.dart';
import 'domain/usecases/suggestion/get_single_suggestion.dart';
import 'domain/usecases/user/create_new_user.dart';
import 'presentation/auth/controller/index.dart';
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
  sl.registerFactory(() => CategoryRemoteApiService(Dio(BaseOptions(contentType: "application/json"))));
  sl.registerFactory(() => UserRemoteApiService(Dio(BaseOptions(contentType: "application/json"))));
  //! External

  //! UseCases
  //Auth
  sl.registerLazySingleton(() => LoginOperation(sl()));
  //User
  sl.registerLazySingleton(() => CreateNewUser(sl()));
  //Suggestion
  sl.registerLazySingleton(() => GetSingleSuggestion(sl()));
  sl.registerLazySingleton(() => GetAllRemoteSuggestions(sl()));
  //Category
  sl.registerLazySingleton(() => GetRemoteCategories(sl()));
  sl.registerLazySingleton(() => InsertLocalCategories(sl()));

  //! Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(userRemoteDataSource: sl()));
  sl.registerLazySingleton<SuggestionRepository>(() => SuggestionRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(categoryLocalDataSource: sl(), categoryRemoteDataSource: sl()));

  //! Datasources
  //Auth
  sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSource(authRemoteApiService: sl()));
  //User
  sl.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSource(userRemoteApiService: sl()));
  //Suggestion
  sl.registerLazySingleton<SuggestionsRemoteDataSource>(() => SuggestionsRemoteDataSource(suggestionApiService: sl()));
  //Category
  sl.registerLazySingleton<CategoryRemoteDataSource>(() => CategoryRemoteDataSource(categoryRemoteApiService: sl()));
  sl.registerLazySingleton<CategoryLocalDataSourceImpl>(() => CategoryLocalDataSourceImpl());
}
