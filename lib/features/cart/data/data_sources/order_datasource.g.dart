// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _OrderDatasource implements OrderDatasource {
  _OrderDatasource(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.mac-iq.net';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<DefaultDataModel<OrderSuccess>>> sendOrder(
    OrderParameters orderParameters,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(orderParameters.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<OrderSuccess>>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/orders/store',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<OrderSuccess> _value;
    try {
      _value = DefaultDataModel<OrderSuccess>.fromJson(
        _result.data!,
        (json) => OrderSuccess.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<OrderSuccess>>> payOrder(
    PayOrderParameters payOrderParameters,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(payOrderParameters.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<OrderSuccess>>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/orders/pay',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<OrderSuccess> _value;
    try {
      _value = DefaultDataModel<OrderSuccess>.fromJson(
        _result.data!,
        (json) => OrderSuccess.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<OrderDetails>>> getOrderDetails(
    OrderDetailsParameters orderDetailsParameters,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(orderDetailsParameters.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<OrderDetails>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/orders/details',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<OrderDetails> _value;
    try {
      _value = DefaultDataModel<OrderDetails>.fromJson(
        _result.data!,
        (json) => OrderDetails.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<PaginationDataModel<OrderEntity>>> getOrders(
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'page': page};
    final _options =
        _setStreamType<HttpResponse<PaginationDataModel<OrderEntity>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/orders',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PaginationDataModel<OrderEntity> _value;
    try {
      _value = PaginationDataModel<OrderEntity>.fromJson(
        _result.data!,
        (json) => OrderEntity.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<List<String>>>>
      getEPaymentTerms() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<List<String>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/utilities/e-payment-terms',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<List<String>> _value;
    try {
      _value = DefaultDataModel<List<String>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json.map<String>((i) => i as String).toList()
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
  Future<HttpResponse<DefaultSuccessModel>> cancelOrder(int id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'id': id};
    final _options = _setStreamType<HttpResponse<DefaultSuccessModel>>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/orders/cancel',
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
