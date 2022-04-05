// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_list_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _JobListDataSource implements JobListDataSource {
  _JobListDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://jobs-proj.herokuapp.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<DataModel> getJobsList({required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'jobs',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataModel.fromJson(_result.data!);
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
