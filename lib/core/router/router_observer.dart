import 'package:flutter/material.dart';
import 'package:firebase_performance/firebase_performance.dart';

class MyRouteObserver extends NavigatorObserver {
  static final MyRouteObserver _instance = MyRouteObserver._internal();
  MyRouteObserver._internal();

  Trace? _currentTrace;
  String? _currentScreen;

  factory MyRouteObserver() => _instance;

  @override
  void didPush(Route route, Route? previousRoute) {
    _startScreenTrace(route);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _stopScreenTrace();
    _startScreenTrace(previousRoute);
    super.didPop(route, previousRoute);
  }

  Future<void> _startScreenTrace(Route? route) async {
    if (route is PageRoute) {
      final name = route.settings.name ?? route.settings.arguments?.toString() ?? 'unknown';
      await _stopScreenTrace(); // stop any existing one

      final trace = FirebasePerformance.instance.newTrace('screen_$name');
      await trace.start();
      _currentScreen = name;
      _currentTrace = trace;
    }
  }

  Future<void> _stopScreenTrace() async {
    if (_currentTrace != null) {
      await _currentTrace!.stop();
      _currentTrace = null;
    }
  }
}
