import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';
import '../custom_buttons/custom_elevated_button.dart';
import '../custom_containers/basic_container.dart';



class InputLoader extends StatelessWidget {
  final double? width;
  final Color? color;

  // final bool unlimitedWidth;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const InputLoader({
    super.key,
    this.width,
    this.color,
    this.height,
    this.padding,
  });

  const InputLoader.fullWidth({
    super.key,
    this.color,
    this.height,
    this.padding,
  }) : width = null;

  InputLoader.small({
    super.key,
    this.color,
    this.height,
    this.padding,
  }) : width = AppSizeW.s346 + AppSizeW.s20;

  @override
  Widget build(BuildContext context) {
    if (width != null) {
      return SizedBox(
          width: (width ?? AppSizeW.s346) + AppSizeW.s20,
          height: height ?? AppSizeH.s50,
          child: Center(
            child: CustomElevatedButton(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizeW.s20, vertical: AppSizeH.s20),
                backgroundColor:
                    color ?? Theme.of(context).scaffoldBackgroundColor,
                borderColor: Theme.of(context).scaffoldBackgroundColor,
                child: SizedBox(
                  width: (width ?? AppSizeW.s346) - AppSizeW.s20,
                  child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(AppSizeR.s8)),
                )),
          ));
    }
    return BasicContainer(
      color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      width: (width),
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: AppSizeW.s8,
          ),
      height: height ?? AppSizeH.s50,
      child: Center(
        child: LinearProgressIndicator(
            minHeight: AppSizeH.s5,
            borderRadius: BorderRadius.circular(AppSizeR.s8)),
      ),
      // )),
    );
  }
}
