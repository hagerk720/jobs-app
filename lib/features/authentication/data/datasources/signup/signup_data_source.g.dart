// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _SignupDataSource implements SignupDataSource {
  _SignupDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://laravel-job-api.herokuapp.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SignupDataResponseModel> signup(signupUserModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(signupUserModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SignupDataResponseModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SignupDataResponseModel.fromJson(_result.data!);
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
