import 'package:flutter/material.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  const GradientContainer({super.key, required this.child, this.padding, this.margin});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[Theme.of(context).cardColor,Theme.of(context).canvasColor]),
        borderRadius: BorderRadius.circular(AppSizeR.s15),
        border: Border.all(color: ColorManager.secondaryColor)
      ),
      child: child,
    );
  }
}
