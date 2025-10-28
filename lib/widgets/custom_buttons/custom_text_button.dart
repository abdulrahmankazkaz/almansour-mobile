import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';

class CustomCard extends StatefulWidget {
  final Widget child;
  final bool selected;
  final Color? selectedColor;
  final EdgeInsetsGeometry? selectedPadding;
  final Function() onTap;
  final double? width;
  final double? height;

  const CustomCard(
      {super.key,
      required this.child,
      required this.onTap,
      this.selected = false,
      this.selectedColor,
      this.selectedPadding,
      this.width,
      this.height});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s10),
          color: widget.selected ? widget.selectedColor : Colors.transparent,
        ),
        padding: widget.selectedPadding ?? EdgeInsets.zero,
        child: widget.child,
      ),
    );
  }
}
