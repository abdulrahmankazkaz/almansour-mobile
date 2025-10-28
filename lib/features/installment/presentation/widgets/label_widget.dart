import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/resources/resources.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.symmetric(vertical: AppSizeW.s4, horizontal: AppSizeW.s8),
      decoration: BoxDecoration(
          color: ColorManager.surface,
          borderRadius: BorderRadius.circular(AppSizeR.s50)),
      child: Text(label.tr(),
          style: Theme.of(context)
              .primaryTextTheme
              .headlineMedium
              ?.copyWith(color: ColorManager.black)),
    );
  }
}