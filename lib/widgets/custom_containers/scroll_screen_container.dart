import 'package:flutter/material.dart';


class ScrollScreenContainer extends StatefulWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final CrossAxisAlignment? crossAxisAlignment;
  final DecorationImage? decorationImage;
  final EdgeInsetsGeometry? margin;

  const ScrollScreenContainer({super.key,
    required this.children,
    this.padding,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
    this.decorationImage,
    this.margin
  });

  @override
  State<ScrollScreenContainer> createState() => _ScrollScreenContainerState();
}

class _ScrollScreenContainerState extends State<ScrollScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height,
      decoration: BoxDecoration(image: widget.decorationImage,
          color: Theme
              .of(context)
              .scaffoldBackgroundColor
      ),
      child:
      SingleChildScrollView(
        child: Padding(
          padding: widget.padding ?? EdgeInsets.zero,
          child: Column(
            mainAxisSize: widget.mainAxisSize??MainAxisSize.max,
            mainAxisAlignment: widget.mainAxisAlignment ??
                MainAxisAlignment.start,
            crossAxisAlignment: widget.crossAxisAlignment ??
                CrossAxisAlignment.center,
            children: widget.children,
          ),
        ),
      ),
    );
  }
}
