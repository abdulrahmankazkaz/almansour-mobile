// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _BookingDatasource implements BookingDatasource {
  _BookingDatasource(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.mac-iq.net';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<DefaultDataModel<List<Dealership>>>>
      getDealerships() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<List<Dealership>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/utilities/dealerships',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<List<Dealership>> _value;
    try {
      _value = DefaultDataModel<List<Dealership>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<Dealership>(
                  (i) => Dealership.fromJson(i as Map<String, dynamic>),
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
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>>
      getAppointmentType() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<List<BasicModel>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/types',
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
  Future<HttpResponse<PaginationDataModel<Appointment>>> getAppointments(
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'page': page};
    final _options =
        _setStreamType<HttpResponse<PaginationDataModel<Appointment>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PaginationDataModel<Appointment> _value;
    try {
      _value = PaginationDataModel<Appointment>.fromJson(
        _result.data!,
        (json) => Appointment.fromJson(json as Map<String, dynamic>),
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
      getAvailableAppointments(
          AvailableAppointmentParameters requestBody) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options = _setStreamType<
        HttpResponse<DefaultDataModel<List<AvailableAppointment>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/get-available-appointment',
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
  Future<HttpResponse<DefaultSuccessModel>> createOtherAppointment(
    AppointmentParameters requestBody,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options = _setStreamType<HttpResponse<DefaultSuccessModel>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/store-other',
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
  Future<HttpResponse<DefaultDataModel<AppointmentPayment>>>
      createRegularAppointment(AppointmentParameters requestBody) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<AppointmentPayment>>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/store-regular',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<AppointmentPayment> _value;
    try {
      _value = DefaultDataModel<AppointmentPayment>.fromJson(
        _result.data!,
        (json) => AppointmentPayment.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<AppointmentPayment>>> initialPayment(
    AppointmentPaymentParameters requestBody,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<AppointmentPayment>>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/initiate-payment',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<AppointmentPayment> _value;
    try {
      _value = DefaultDataModel<AppointmentPayment>.fromJson(
        _result.data!,
        (json) => AppointmentPayment.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<DefaultDataModel<OrderDetails>>> getOtherPaymentDetails(
    AppointmentPaymentParameters requestBody,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<OrderDetails>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/get-bill-details-other',
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
  Future<HttpResponse<DefaultDataModel<OrderDetails>>> getRegularPaymentDetails(
    AppointmentPaymentParameters requestBody,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<OrderDetails>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/get-bill-details-regular',
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
  Future<HttpResponse<DefaultDataModel<Appointment>>> approveUpdatedAppointment(
    ApproveUpdatedAppointmentParameters requestBody,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options =
        _setStreamType<HttpResponse<DefaultDataModel<Appointment>>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/appointments/approve-change-time',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DefaultDataModel<Appointment> _value;
    try {
      _value = DefaultDataModel<Appointment>.fromJson(
        _result.data!,
        (json) => Appointment.fromJson(json as Map<String, dynamic>),
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
