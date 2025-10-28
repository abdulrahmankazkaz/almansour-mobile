import 'package:flutter/material.dart';

import '../../core/utils/resources/color_manager.dart';
import '../../core/utils/resources/values_manager.dart';
import '../custom_divider/screen_divider.dart';

class EmptyDataWidget extends StatelessWidget {
  final   String message;
  final String description;
  const EmptyDataWidget({
    required this.message,
    this.description = '',
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height*0.25),
          Text(message,style: Theme.of(context).textTheme.headlineLarge),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppSizeW.s110),
            child: CustomDivider(color: ColorManager.secondaryColor,thickness: AppSizeH.s3),
          )
        ]);
  }
}