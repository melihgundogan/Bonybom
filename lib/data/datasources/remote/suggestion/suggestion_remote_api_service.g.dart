// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_remote_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _SuggestionRemoteApiService implements SuggestionRemoteApiService {
  _SuggestionRemoteApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://bonybom.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<SuggestionModel>> getSuggestions() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<SuggestionModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/suggestion/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => SuggestionModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<SuggestionModel> getSingleSuggestion(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuggestionModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/suggestion/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuggestionModel.fromJson(_result.data!);
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
