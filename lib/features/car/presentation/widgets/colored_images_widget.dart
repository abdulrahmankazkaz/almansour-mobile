import 'package:flutter/material.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../../widgets/image_widgets/image_widget.dart';
import '../../entities/image_with_color/image_with_color.dart';

class ColoredImagesWidget extends StatefulWidget {
  final List<ImageWithColor> secondaryImages;
  const ColoredImagesWidget({super.key, required this.secondaryImages});

  @override
  State<ColoredImagesWidget> createState() => _ColoredImageWidgetState();
}

class _ColoredImageWidgetState extends State<ColoredImagesWidget> with TickerProviderStateMixin {
  ValueNotifier<int> selectedColorIndex = ValueNotifier(0);
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 400),
    vsync: this,
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: AnimatedBuilder(
              animation: selectedColorIndex,
              builder: (context,_) {
                return FadeTransition(
                  opacity: _animation,
                  child: ImageWidget(
                    url: widget.secondaryImages.isNotEmpty? widget.secondaryImages[selectedColorIndex.value].image:'',
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.2,
                    fit: BoxFit.contain,
                  ),
                );
              }
          )),
      if(widget.secondaryImages.length>1)
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.secondaryImages.length, (index) {
            return AnimatedBuilder(
              animation: selectedColorIndex,
              builder: (context,_) {
                return widget.secondaryImages[index].color.id!=-1? InkWell( //id -1 means color is null
                  onTap: () {
                    if(selectedColorIndex.value != index) {
                      selectedColorIndex.value = index;
                      _controller.reset();
                      _controller.forward();
                    }
                  },
                  child: Container(
                      padding: EdgeInsets.all(AppSizeW.s2),
                      margin: EdgeInsets.symmetric(horizontal: AppSizeW.s3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: selectedColorIndex.value == index? ColorManager.black :ColorManager.softGrey)),
                      child: Container(
                        height: AppSizeH.s18,
                        width: AppSizeH.s18,
                        decoration: BoxDecoration(
                            color:
                            Color(widget.secondaryImages[index].color.color.toHexColor),
                            shape: BoxShape.circle),
                      )),
                ):const SizedBox.shrink();
              },
            );
          })),
      SizedBox(height: AppSizeH.s10),
      const CustomDivider(color: ColorManager.softGrey),
      SizedBox(height: AppSizeH.s10)
    ]);
  }
}