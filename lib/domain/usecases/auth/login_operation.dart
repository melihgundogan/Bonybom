import 'package:bonybom_app/core/usecases/usecase.dart';
import 'package:bonybom_app/domain/entities/auth.dart';
import 'package:bonybom_app/domain/params/auth_params.dart';
import 'package:bonybom_app/domain/repositories/auth_repository.dart';

class LoginOperation implements UseCase<Auth, AuthParams> {
  final AuthRepository _authRepository;

  LoginOperation(this._authRepository);

  @override
  Future<Auth> call(AuthParams params) async {
    return await _authRepository.loginOperation(params.userName, params.password);
  }
}
