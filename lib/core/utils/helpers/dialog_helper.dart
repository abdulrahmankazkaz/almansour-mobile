import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';

import '../../../generated/locale_keys.g.dart';

class DialogHelper {
  Future<void> showErrorMessage({
    BuildContext? context,
    required String message,
  }) async {
    await showDialog(
        context: context ?? rootNavigatorKey.currentContext!,
        builder: (dialogContext) => AlertDialog(
              scrollable: true,
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline,
                      color: Colors.red, size: AppSizeH.s60),
                  SizedBox(height: AppSizeH.s10),
                  Text(LocaleKeys.messages_errorMessage.tr(),
                      style:
                          Theme.of(context ?? rootNavigatorKey.currentContext!)
                              .textTheme
                              .titleMedium),
                  SizedBox(height: AppSizeH.s10),
                  Text(message),
                  SizedBox(height: AppSizeH.s10),
                  SizedBox(
                    width: AppSizeW.s150,
                    child: ElevatedButton(
                        style: Theme.of(
                                context ?? rootNavigatorKey.currentContext!)
                            .errorElevatedButtonTheme,
                        onPressed: () {
                          if (dialogContext.canPop()) {
                            dialogContext.pop();
                          }
                        },
                        child: Text(LocaleKeys.ok.tr())),
                  )
                ],
              ),
            ));
  }

  void showToastMessage({
    required BuildContext context,
    required String message,
    bool isSuccessToast = false,
    Color backgroundColor = Colors.white,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars(); // clear previous toasts
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(),
            Text(message,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center),
           Spacer(),
           InkWell(
                  onTap: () => ScaffoldMessenger.of(context).clearSnackBars(),
                  child: Icon(Icons.close)),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        elevation: 6,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
                color: isSuccessToast ? Colors.green : Colors.black12,
            width: 2
            )),
      ),
    );
  }
}
