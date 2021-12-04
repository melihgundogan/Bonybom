import 'package:bonybom_app/core/constants/enums/network_path.dart';
import 'package:bonybom_app/core/extension/network_extension.dart';
import 'package:bonybom_app/core/init/network/network_manager.dart';
import 'package:bonybom_app/data/datasources/remote/auth/auth_api.dart';
import 'package:bonybom_app/data/models/auth_model.dart';
import 'package:bonybom_app/domain/entities/auth.dart';

class AuthApiImpl implements AuthApi {
  @override
  Future<Auth> loginOperation(String userName, String password) async {
    AuthModel authModel = AuthModel();
    // final authInfo = await BaseService.instance.networkManager.send<AuthModel, AuthModel>(
    //   NetworkPath.LOGIN.rawValue,
    //   parseModel: AuthModel(),
    //   method: RequestType.POST,
    //   data: {"email": userName, "password": password},
    // );

    // authModel = authInfo.data ?? AuthModel();

    return authModel.toEntity();
  }
}
