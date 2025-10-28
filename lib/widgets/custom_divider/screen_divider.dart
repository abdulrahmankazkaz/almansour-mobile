import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({this.color,this.thickness, super.key});
  final Color? color;
  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(color: color??Theme.of(context).dividerColor,thickness: thickness);
  }
}
