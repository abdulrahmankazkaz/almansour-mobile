import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/router/routes_manager.dart';
import '../../generated/locale_keys.g.dart';
import 'custom_elevated_button.dart';

class CancelBTN extends StatelessWidget {
  const CancelBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: WidgetStateProperty.all<Color>(
                Theme.of(context).colorScheme.error.withOpacity(0.7)),
            foregroundColor: WidgetStateProperty.all<Color>(
                Theme.of(context).colorScheme.error),
            overlayColor: WidgetStateProperty.all<Color>(
                Theme.of(context).colorScheme.error.withOpacity(0.7)),
            shadowColor: WidgetStateProperty.all<Color>(
                Theme.of(context).colorScheme.error.withOpacity(0.7)),
            elevation: WidgetStateProperty.all<double>(0),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.error,
                  width: 1,
                ),
              ),
            ),
          ),
      // backgroundColor: Theme.of(context).colorScheme.error.withOpacity(0.7),
      // borderColor: Theme.of(context).colorScheme.error,
      // showShadow: true,
      onPressed: () {
        appRouter.pop();
      },
      child: Text(
        LocaleKeys.cancel.tr(),
        style: Theme.of(context).primaryTextTheme.labelMedium,
      ),
    );
  }
}
