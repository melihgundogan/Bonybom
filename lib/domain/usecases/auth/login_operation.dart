// import 'package:dartz/dartz.dart';

// import '../../../core/error/failures.dart';
// import '../../../core/usecases/usecase.dart';
// import '../../entities/auth.dart';
// import '../../params/auth_params.dart';
// import '../../repositories/auth_repository.dart';

// class LoginOperation implements UseCase<Auth, AuthParams> {
//   final AuthRepository _authRepository;

//   LoginOperation(this._authRepository);

//   @override
//   Future<Either<Failure, Auth>> call(AuthParams params) async {
//     return await _authRepository.loginOperation(params.userName, params.password);
//   }
// }
