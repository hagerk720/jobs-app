// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApplyDataSource implements ApplyDataSource {
  _ApplyDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://0a20-154-180-84-54.ngrok.io/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<String> apply(applyInfoModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(applyInfoModel.toJson());
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, 'apply',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
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
