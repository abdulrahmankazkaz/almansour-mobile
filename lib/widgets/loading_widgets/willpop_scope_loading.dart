import 'package:flutter/material.dart';

import '../../core/utils/resources/color_manager.dart';

class LoadingDialog extends StatefulWidget {
  const LoadingDialog({super.key});

  @override
  LoadingDialogState createState() => LoadingDialogState();

  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: ColorManager.lightBlack.withOpacity(.4),
      builder: (BuildContext context) {
        return const LoadingDialog();
      },
    );
  }

  static void hide(BuildContext context) {
    if (Navigator.of(context, rootNavigator: true).canPop()) {
      Navigator.of(context, rootNavigator: true).pop(context);
    }
  }
}

class LoadingDialogState extends State<LoadingDialog> {
  @override
  Widget build(BuildContext context) {
    return const PopScope(
        canPop: false,
        child: AlertDialog(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [LinearProgressIndicator()])));
  }
}
