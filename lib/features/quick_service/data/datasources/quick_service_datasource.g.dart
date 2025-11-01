// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_service_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _QuickServiceDatasource implements QuickServiceDatasource {
  _QuickServiceDatasource(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.mac-iq.net';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getCities() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<List<BasicModel>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/quick-service/cities',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<List<BasicModel>> _value;
    try {
      _value = DefaultDataModel<List<BasicModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<BasicModel>(
                  (i) => BasicModel.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getDealerships(
    int city_id,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'city_id': city_id};
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<List<BasicModel>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/quick-service/dealerships',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<List<BasicModel>> _value;
    try {
      _value = DefaultDataModel<List<BasicModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<BasicModel>(
                  (i) => BasicModel.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getServices() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<List<BasicModel>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/quick-service/services',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<List<BasicModel>> _value;
    try {
      _value = DefaultDataModel<List<BasicModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<BasicModel>(
                  (i) => BasicModel.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<List<AvailableAppointment>>>>
      getAvailable(int dealership_id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'dealership_id': dealership_id};
    final _options = _setStreamType<
        HttpResponse<DefaultDataModel<List<AvailableAppointment>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/quick-service/available',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<List<AvailableAppointment>> _value;
    try {
      _value = DefaultDataModel<List<AvailableAppointment>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<AvailableAppointment>(
                  (i) => AvailableAppointment.fromJson(
                    i as Map<String, dynamic>,
                  ),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultSuccessModel>> createQuickService(
    QuickServiceParameters quickServiceParameters,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(quickServiceParameters.toJson());
    final _options = _setStreamType<HttpResponse<DefaultSuccessModel>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/quick-service/store',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultSuccessModel _value;
    try {
      _value = DefaultSuccessModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<List<QuickServiceModel>>>>
      getQuickServices() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<List<QuickServiceModel>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/quick-service/',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<List<QuickServiceModel>> _value;
    try {
      _value = DefaultDataModel<List<QuickServiceModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<QuickServiceModel>(
                  (i) => QuickServiceModel.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
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

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
