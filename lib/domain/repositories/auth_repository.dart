import 'package:bonybom_app/data/models/request/auth_request_model.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entities/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, Auth>> loginOperation(AuthRequestModel authRequestModel);
}
