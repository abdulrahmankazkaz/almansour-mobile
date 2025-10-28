import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';
import 'basic_container.dart';

class CustomCard extends StatefulWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const CustomCard({super.key, required this.child, this.padding});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return BasicContainer(
      color: Theme.of(context).colorScheme.secondaryContainer,
      padding: widget.padding ??
          EdgeInsets.symmetric(
              horizontal: AppSizeW.s10, vertical: AppSizeH.s10),
      child: widget.child,
    );
  }
}
