import 'package:bonybom_app/core/constants/app/app_constants.dart';
import 'package:bonybom_app/core/init/network/jwt_interceptor.dart';
import 'package:dio/dio.dart';

class BaseService {
  static BaseService? _instance;
  static BaseService get instance {
    if (_instance != null) return _instance!;
    _instance = BaseService._init();
    return _instance!;
  }

  BaseService._init();

  // INetworkManager networkManager = NetworkManager(
  //   isEnableLogger: false,
  //   options: BaseOptions(baseUrl: ApplicationConstants.API_URL),
  // );

  late final networkManager = Dio()
    ..options = BaseOptions(
      baseUrl: ApplicationConstants.API_URL,
      contentType: 'application/json',
    )
    ..interceptors.add(JwtInterceptor());
}
