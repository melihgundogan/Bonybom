import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> createNewUser(User user);
}
