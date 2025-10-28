import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/utils/resources/color_manager.dart';
import '../../core/utils/resources/values_manager.dart';
import '../../generated/locale_keys.g.dart';

class WarningDialog extends StatelessWidget {
  final String message;
  const WarningDialog({required this.message,super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(children: [
        Text(LocaleKeys.sorry.tr(),
            style: Theme.of(context).primaryTextTheme.headlineMedium),
        SizedBox(height: AppSizeH.s20),
        Text(message.tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ColorManager.black))
      ]),
    );
  }
}
