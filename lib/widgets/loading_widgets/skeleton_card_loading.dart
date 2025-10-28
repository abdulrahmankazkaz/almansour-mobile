import 'package:flutter/material.dart';
import 'package:mac_mobile/widgets/loading_widgets/shimmer_widget.dart';

import '../../core/utils/resources/resources.dart';

class SkeletonCardLoading extends StatelessWidget {
  final double? height;
  const SkeletonCardLoading({this.height,super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(child: Container(
      margin: EdgeInsets.all(AppSizeH.s15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizeR.s15),
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF324756), Color(0xFF0A2536)]),
      ),
      height: height ?? MediaQuery.sizeOf(context).height * 0.15,
    ));
  }
}
