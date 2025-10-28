import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/utils/resources/values_manager.dart';

class EmptyLottieWidget extends StatelessWidget {
  final String title;
  final String lottie;
  final String description;

  const EmptyLottieWidget({super.key,
    this.title = '',
    this.description = '',
    required this.lottie});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      SizedBox(height: MediaQuery
          .sizeOf(context)
          .height * 0.1),
      SizedBox(
        width: MediaQuery.sizeOf(context).width,
          height: MediaQuery
              .sizeOf(context)
              .height * 0.3,
          child: Lottie.asset(lottie, fit: BoxFit.fitHeight)),
      if(title.isNotEmpty)
        ...{SizedBox(height: AppSizeH.s30),
          Text(title,textAlign: TextAlign.center ,style: Theme
              .of(context)
              .textTheme
              .headlineLarge)},
      if(description.isNotEmpty)
        ...{SizedBox(height: AppSizeH.s12),
          Text(description,
              textAlign: TextAlign.center,
              style: Theme
              .of(context)
              .textTheme
              .labelMedium)}
    ]);
  }
}
