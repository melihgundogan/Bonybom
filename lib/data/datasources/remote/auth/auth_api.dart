import 'package:bonybom_app/domain/entities/auth.dart';

abstract class AuthApi {
  Future<Auth> loginOperation(String userName, String password);
}
