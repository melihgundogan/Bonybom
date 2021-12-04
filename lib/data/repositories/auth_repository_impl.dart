// import 'package:bonybom_app/data/datasources/local/hive/auth/auth_model.dart';

// import '../datasources/local/hive/auth/auth_local_datasource.dart';
// import '../datasources/remote/auth/auth_api.dart';
// import '../../domain/entities/auth.dart';
// import '../../domain/repositories/auth_repository.dart';

// class AuthRepositoryImpl implements AuthRepository {
//   final AuthLocalDataSourceImpl localDataSource;
//   final AuthApi remoteDataSource;

//   AuthRepositoryImpl({
//     required this.localDataSource,
//     required this.remoteDataSource,
//   });

//   @override
//   Future<Auth> loginOperation(String userName, String password) async {
//     // try {
//     //   final remoteLogin = await remoteDataSource.loginOperation(userName, password);
//     //   AuthModel localAuthModel = AuthModel();
//     //   AuthModel localAuthModelFromEntity = localAuthModel.fromEntity(remoteLogin);
//     //   if (remoteLogin.status == 200) {
//     //     await localDataSource.putItem("auth", localAuthModelFromEntity);
//     //   }

//     //   return Auth();
//     // } catch (e) {
//     //   throw Exception(e);
//     // }
//   }
// }
