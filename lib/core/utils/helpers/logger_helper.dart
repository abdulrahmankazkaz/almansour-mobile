import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

enum LogLevel { trace, debug, info, warning, error, fatal }

class LoggerService {
  final Logger _logger;

  LoggerService() : _logger = Logger();

  void logNetwork(
      {required String message,
      DioException? error,
      LogLevel level = LogLevel.info}) {
    if (kDebugMode) {
      _logMessage(message, error, level);
    }
  }

  void logCatchDebug(
      {required String message, Object? error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      _logMessage(message, error, LogLevel.error, stackTrace: stackTrace);
    }
  }

  void logDebug({required String message}) {
    if (kDebugMode) {
      _logger.i(message);
    }
  }

  void _logMessage(String message, Object? error, LogLevel level,
      {StackTrace? stackTrace}) {
    switch (level) {
      case LogLevel.trace:
        _logger.t(message);
        break;
      case LogLevel.debug:
        _logger.d(message);
        break;
      case LogLevel.info:
        _logger.i(message);
        break;
      case LogLevel.warning:
        _logger.w(message);
        break;
      case LogLevel.error:
        _logger.e(message, error: error, stackTrace: stackTrace);
        break;
      case LogLevel.fatal:
        _logger.f(message, error: error, stackTrace: stackTrace);
        break;
    }
  }
}
/// if needed use to determine when you need to log, pass it to Logger() filter parameter
// class Filter extends LogFilter {
//   @override
//   bool shouldLog(LogEvent event) {
//     return true;
//   }
// }
