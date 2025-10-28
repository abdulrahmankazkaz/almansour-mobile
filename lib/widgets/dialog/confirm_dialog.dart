import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';
import '../../generated/locale_keys.g.dart';
import '../custom_buttons/custom_elevated_button.dart';

class ConfirmDialog extends StatefulWidget {
  final String title;
  final String message;

  const ConfirmDialog({super.key, required this.message, required this.title});

  @override
  ConfirmDialogState createState() => ConfirmDialogState();
}

class ConfirmDialogState extends State<ConfirmDialog> {
  bool _selectedOption = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (widget.title.isNotEmpty)
              ? Text(
                  widget.title,
                  textAlign: TextAlign.center,
                )
              : const SizedBox(),
          if (widget.title.isNotEmpty)
            SizedBox(
              height: AppSizeH.s10,
            ),
          widget.message.isNotEmpty
              ? Text(
                  widget.message,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                )
              : const SizedBox()
        ],
      ),
      actions: [
        CustomElevatedButton(
          child:  Text(
              LocaleKeys.yes.tr()),
          onPressed: () {
            setState(() {
              _selectedOption = true;
            });
            Navigator.of(context).pop(_selectedOption);
          },
        ),
        CustomElevatedButton(
          style:
              ButtonStyle(shape: ElevatedButtonTheme.of(context).style?.shape),
          child: Center(
            child: Text(LocaleKeys.no.tr()),
          ),
          onPressed: () {
            setState(() {
              _selectedOption = false;
            });
            Navigator.of(context).pop(_selectedOption);
          },
        ),
      ],
    );
  }
}
