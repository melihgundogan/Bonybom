// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_remote_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AuthRemoteApiService implements AuthRemoteApiService {
  _AuthRemoteApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://bonybom.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AuthModel> authUser(authRequestModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(authRequestModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/api/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthModel.fromJson(_result.data!);
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
