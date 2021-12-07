// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_remote_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserRemoteApiService implements UserRemoteApiService {
  _UserRemoteApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://bonybom.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserModel> createNewUser(userModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'user/api/register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
