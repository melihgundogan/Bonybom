import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/core/usecases/usecase.dart';
import 'package:bonybom_app/domain/entities/user.dart';
import 'package:bonybom_app/domain/params/user_params.dart';
import 'package:bonybom_app/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class CreateNewUser implements UseCase<User, UserParams> {
  final UserRepository _userRepository;

  CreateNewUser(this._userRepository);

  @override
  Future<Either<Failure, User>> call(UserParams params) async {
    return await _userRepository.createNewUser(params.user);
  }
}
