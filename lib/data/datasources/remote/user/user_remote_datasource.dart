import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/data/models/user_model.dart';
import 'package:bonybom_app/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'user_remote_api_service.dart';

class UserRemoteDataSource {
  final UserRemoteApiService userRemoteApiService;

  UserRemoteDataSource({required this.userRemoteApiService});

  Future<Either<Failure, User>> createNewUser(UserModel userModel) async {
    try {
      final createUser = await userRemoteApiService.createNewUser(userModel);
      return Right(createUser);
    } on DioError catch (e) {
      print(e);
      return Left(Failure(e.message));
    } on Exception catch (_) {
      return Left(
        Failure("Some error occured!"),
      );
    }
  }
}
