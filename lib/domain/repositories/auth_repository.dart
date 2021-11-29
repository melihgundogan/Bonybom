import '../entities/auth.dart';

abstract class AuthRepository {
  Future<Auth> loginOperation(String userName, String password);
}
