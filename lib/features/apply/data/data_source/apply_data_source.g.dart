// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApplyDataSource implements ApplyDataSource {
  _ApplyDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://jobs-proj.herokuapp.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<String> apply(
      {userId, jobId, expectedSalary, currentSalaru, fileCV}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (userId != null) {
      _data.fields.add(MapEntry('user_id', userId.toString()));
    }
    if (jobId != null) {
      _data.fields.add(MapEntry('job_id', jobId.toString()));
    }
    if (expectedSalary != null) {
      _data.fields.add(MapEntry('expected_salary', expectedSalary.toString()));
    }
    if (currentSalaru != null) {
      _data.fields.add(MapEntry('current_salary', currentSalaru.toString()));
    }
    if (fileCV != null) {
      _data.files.add(MapEntry(
          'cv',
          MultipartFile.fromFileSync(fileCV.path,
              filename: fileCV.path.split(Platform.pathSeparator).last)));
    }
    final _result = await _dio.fetch<String>(_setStreamType<String>(Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data')
        .compose(_dio.options, 'appliedJob',
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
