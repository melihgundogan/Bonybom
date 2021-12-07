// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_remote_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CategoryRemoteApiService implements CategoryRemoteApiService {
  _CategoryRemoteApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://bonybom.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<CategoryModel>> getAllRemoteCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<CategoryModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/category/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => CategoryModel.fromJson(i as Map<String, dynamic>))
        .toList();
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
