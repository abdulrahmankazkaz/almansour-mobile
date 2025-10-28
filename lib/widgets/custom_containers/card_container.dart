import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final Color? borderColor;
  final bool withShadow;
  final EdgeInsetsGeometry? padding;
  const CardContainer({
  required this.child,
    this.width,
    this.borderColor,
    this.withShadow =true,
    this.padding,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding?? EdgeInsets.all(AppSizeW.s14),
      decoration: BoxDecoration(
        color:Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(AppSizeR.s10),
        border: Border.all(color: borderColor??Colors.transparent),
        boxShadow: withShadow? [
          BoxShadow(
              color: Theme.of(context).shadowColor.withValues(alpha: 0.1),
              spreadRadius: 3,
              blurRadius: 3)
        ]:null,
      ),
      child: child,
    );
  }
}
