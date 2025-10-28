import 'package:flutter/material.dart';

class IndexedWidget extends StatelessWidget {
  final String id;
  final Widget Function(BuildContext context, String index) builder;

  const IndexedWidget({super.key, required this.id, required this.builder});

  @override
  Widget build(BuildContext context) {
    return builder.call(context, id);
  }
}
