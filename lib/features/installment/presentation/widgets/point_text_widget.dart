import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/resources/resources.dart';

class PointText extends StatelessWidget {
  const PointText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppSizeH.s10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: AppSizeH.s4),
            height: AppSizeW.s10,
            width: AppSizeW.s10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.secondaryColor,
            ),
          ),
          SizedBox(width: AppSizeW.s10),
          Expanded(
              child: Text(text.tr(),
                  maxLines: 3, style: Theme.of(context).textTheme.labelLarge))
        ],
      ),
    );
  }
}