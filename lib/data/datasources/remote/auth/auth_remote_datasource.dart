import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/data/datasources/remote/auth/auth_remote_api_service.dart';
import 'package:bonybom_app/data/models/request/auth_request_model.dart';
import 'package:bonybom_app/domain/entities/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRemoteDataSource {
  final AuthRemoteApiService authRemoteApiService;

  AuthRemoteDataSource({required this.authRemoteApiService});

  Future<Either<Failure, Auth>> authUser(AuthRequestModel authRequestModel) async {
    try {
      final authUser = await authRemoteApiService.authUser(authRequestModel);
      return Right(authUser);
    } on DioError catch (error) {
      print(error.type);
      print(error.message);
      return Left(Failure(error.message));
    } on Exception catch (_) {
      return const Left(
        Failure("Some error occured."),
      );
    }
  }
}
