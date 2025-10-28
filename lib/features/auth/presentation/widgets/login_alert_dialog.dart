import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes_manager.dart';
import '../../../../core/utils/resources/color_manager.dart';
import '../../../../core/utils/resources/values_manager.dart';
import '../../../../generated/locale_keys.g.dart';

class LoginAlertDialog extends StatelessWidget {
  const LoginAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(LocaleKeys.auth_needToLoginMessage.tr(),
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.black)),
      ),
      content: Row(
        children: [
          SizedBox(
            width: AppSizeW.s100,
            child: ElevatedButton(
                onPressed: () {
                  context.go(RoutesPaths.loginRoute);
                },
                child: Text(LocaleKeys.auth_login.tr())),
          ),
          const Spacer(),
          SizedBox(
            width: AppSizeW.s100,
            child: ElevatedButton(
                onPressed: () {
                  if (context.canPop()) {
                    context.pop();
                  }
                },
                child: Text(LocaleKeys.auth_visitor.tr())),
          ),
        ],
      ),
    );
  }
}
