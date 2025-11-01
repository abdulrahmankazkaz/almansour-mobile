import 'package:dio/dio.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';

class FirebasePerformanceInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final path = options.path;
      final friendlyName = 'api_${path.replaceAll('/', '_')}';

      // Create HTTP metric
      final trace = FirebasePerformance.instance.newHttpMetric(
        options.uri.toString(),
        _toHttpMethod(options.method),
      );

      // Add attributes for easier filtering
      trace.putAttribute('endpoint', path);
      trace.putAttribute('method', options.method);

      // Track request payload size (optional)
      if (options.data != null) {
        trace.requestPayloadSize = options.data.toString().length;
      }

      await trace.start();

      // Store trace in request extra for response/error handling
      options.extra['firebase_trace'] = trace;
    } catch (e) {
      // Avoid breaking request if tracing fails
      LoggerService().logCatchDebug(message: 'Firebase trace start error: $e');
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      final trace = response.requestOptions.extra['firebase_trace'] as HttpMetric?;
      if (trace != null) {
        trace.httpResponseCode = response.statusCode ?? 0;

        // Track response size
        if (response.data != null) {
          trace.responsePayloadSize = response.data.toString().length;
        }

        await trace.stop();
      }
    } catch (e) {
      LoggerService().logCatchDebug(message:'Firebase trace stop error (response): $e');
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      final trace = err.requestOptions.extra['firebase_trace'] as HttpMetric?;
      if (trace != null) {
        trace.httpResponseCode = err.response?.statusCode ?? 0;
        await trace.stop();
      }
    } catch (e) {
      LoggerService().logCatchDebug(message:'Firebase trace stop error (error): $e');
    }

    handler.next(err);
  }

  HttpMethod _toHttpMethod(String method) {
    switch (method.toUpperCase()) {
      case 'GET':
        return HttpMethod.Get;
      case 'POST':
        return HttpMethod.Post;
      case 'PUT':
        return HttpMethod.Put;
      case 'DELETE':
        return HttpMethod.Delete;
      case 'PATCH':
        return HttpMethod.Patch;
      case 'HEAD':
        return HttpMethod.Head;
      case 'OPTIONS':
        return HttpMethod.Options;
      default:
        return HttpMethod.Get;
    }
  }
}
