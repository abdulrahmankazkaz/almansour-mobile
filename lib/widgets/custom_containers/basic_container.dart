import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';

class BasicContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final Color? color;
  final BoxBorder? boxBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final List<BoxShadow>? boxShadow;
  final BoxShape? shape;

  const BasicContainer(
      {super.key,
      required this.child,
      this.width,
      this.height,
      this.padding,
      this.color,
      this.boxBorder,
      this.boxShadow,
      this.margin,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: shape ?? BoxShape.rectangle,
          color: color ?? Theme.of(context).colorScheme.primaryContainer,
          borderRadius: shape == null?BorderRadius.circular(AppSizeR.s10):null,
          boxShadow: boxShadow,
          border: boxBorder),
      clipBehavior: Clip.antiAlias,
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      child: child,
    );
  }
}
