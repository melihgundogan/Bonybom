import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/auth.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/remote/auth/auth_remote_datasource.dart';
import '../models/request/auth_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, Auth>> loginOperation(AuthRequestModel reqModel) async {
    try {
      final response = await remoteDataSource.authUser(reqModel);
      return response.fold((failure) => Left(failure), (auth) async {
        if (auth != null) {
          return Right(auth);
        }
        return const Left(Failure("Login başarısız."));
      });
    } on Exception catch (_) {
      return const Left(Failure("Bir hata oluştu"));
    }
    // try {
    //   final remoteLogin = await remoteDataSource.loginOperation(userName, password);
    //   AuthModel localAuthModel = AuthModel();
    //   AuthModel localAuthModelFromEntity = localAuthModel.fromEntity(remoteLogin);
    //   if (remoteLogin.status == 200) {
    //     await localDataSource.putItem("auth", localAuthModelFromEntity);
    //   }

    //   return Auth();
    // } catch (e) {
    //   throw Exception(e);
    // }
  }
}
