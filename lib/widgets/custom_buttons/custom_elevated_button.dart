import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';


class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final Color? backgroundColor;
  final Size? minimumSize;
  final ButtonStyle? style;
  final bool showShadow;
  final TextStyle? labelStyle;
  final bool isLoading;
  final EdgeInsetsGeometry? padding;
  final bool inverseStyle;
  final Color? borderColor;

  const CustomElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.inverseStyle = false,
    this.labelStyle,
    this.style,
    this.borderColor,
    this.padding,
    this.minimumSize,
    this.showShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: showShadow
            ? [
                BoxShadow(
                    color:
                        Theme.of(context).colorScheme.shadow.withOpacity(0.16),
                    spreadRadius: 0,
                    offset: const Offset(0, 3),
                    blurRadius: 5)
              ]
            : null,
        borderRadius: BorderRadius.circular(AppSizeR.s10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: style ??
            ElevatedButton.styleFrom(
                side: borderColor != null
                    ? BorderSide(color: borderColor!)
                    : null,
                padding: padding,
                backgroundColor: backgroundColor,
                minimumSize: minimumSize),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!isLoading) child,
            Visibility(
              visible: isLoading ?? false,
              child: SizedBox(
                  height: AppSizeSp.s15,
                  width: AppSizeSp.s15,
                  child: CircularProgressIndicator(
                    strokeWidth: AppSizeSp.s3,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    backgroundColor: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(.5),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
