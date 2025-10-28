import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';
import 'shimmer_widget.dart';

class SkeletonListLoading extends StatelessWidget {
  const SkeletonListLoading({this.height, super.key});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 8,
        itemBuilder: (context, index) => ShimmerWidget(
                child: Container(
              margin: EdgeInsets.symmetric(vertical: AppSizeH.s10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizeR.s15),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF324756), Color(0xFF0A2536)]),
              ),
              height: height ?? MediaQuery.sizeOf(context).height * 0.16,
            )));
  }
}
