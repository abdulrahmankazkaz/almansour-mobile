import 'package:flutter/material.dart';

import '../../generated/assets.dart';

class ScreenContainer extends StatefulWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final DecorationImage? decorationImage;


  const ScreenContainer({super.key, required this.child, this.padding,this.margin,this.decorationImage=const DecorationImage(
  image: AssetImage(Assets.imagesBackGround), fit: BoxFit.cover),});

  @override
  State<ScreenContainer> createState() => _ScreenContainerState();
}

class _ScreenContainerState extends State<ScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: widget.margin,
      color: Theme.of(context).scaffoldBackgroundColor,
      // decoration: BoxDecoration(image: widget.decorationImage),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: widget.child,
    );
  }
}
