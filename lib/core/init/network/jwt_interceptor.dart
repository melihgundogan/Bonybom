import 'package:bonybom_app/core/constants/enums/locale_keys_enum.dart';
import 'package:bonybom_app/core/init/cache/local_manager.dart';
import 'package:dio/dio.dart';

class JwtInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = LocalManager.instance.getStringValue(PreferencesKeys.TOKEN);

    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    handler.next(options);
  }
}
