import 'package:flutter/cupertino.dart';

class MyRouteObserver extends NavigatorObserver {
  static final MyRouteObserver _instance = MyRouteObserver._internal();
  late String currentRoute;

  factory MyRouteObserver() => _instance;

  MyRouteObserver._internal();

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {}
}
