import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/resources/resources.dart';
import '../../generated/locale_keys.g.dart';

class ConfirmExitDialog extends StatelessWidget {
  const ConfirmExitDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(LocaleKeys.exit.tr()),
      content: Text(LocaleKeys.confirmExitMessage.tr(),
          style: Theme.of(context).textTheme.labelMedium),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(LocaleKeys.cancel.tr()),
        ),
        TextButton(
          style: Theme.of(context).errorTextButtonTheme,
          onPressed: () => context.pop(true),
          child: Text(LocaleKeys.exit.tr()),
        ),
      ],
    );
  }
}