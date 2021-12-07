import 'package:bonybom_app/data/datasources/remote/user/user_remote_datasource.dart';
import 'package:bonybom_app/data/models/user_model.dart';
import 'package:bonybom_app/domain/entities/user.dart';
import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl({required this.userRemoteDataSource});

  @override
  Future<Either<Failure, User>> createNewUser(User user) async {
    try {
      UserModel userModel = UserModel(
        firstName: user.firstName,
        lastName: user.lastName,
        email: user.email,
        password: user.password,
        dob: user.dob,
        gender: user.gender,
        categories: user.categories,
        locationId: user.locationId,
      );

      final response = await userRemoteDataSource.createNewUser(userModel);
      return response.fold((failure) => Left(failure), (user) async {
        if (user != null) {
          return Right(user);
        }
        return const Left(Failure("Kullanıcı oluşturulamadı"));
      });
    } on Exception catch (e) {
      return const Left(Failure("Bir hata oluştu"));
    }
  }
}
