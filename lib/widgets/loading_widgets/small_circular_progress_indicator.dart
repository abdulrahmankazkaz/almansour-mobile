import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';

class SmallCircularIndicator extends StatelessWidget {
  final double? value;
  final EdgeInsets? padding;

  const SmallCircularIndicator({super.key, this.value, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppSizeH.s25,
        height: AppSizeH.s25,
        padding: padding,
        child: Center(
          child: CircularProgressIndicator(
            value: value,
          ),
        ));
  }
}
