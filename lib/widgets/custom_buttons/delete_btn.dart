import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';

class DeleteButton extends StatelessWidget {
  final Function()? onRemovePressed;

  const DeleteButton({super.key, this.onRemovePressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeH.s50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizeH.s8, vertical: AppSizeH.s15),
            minimumSize: Size(AppSizeW.s15, AppSizeH.s15),
            backgroundColor: Theme.of(context).cardColor,
          ),
          onPressed: onRemovePressed,
          child: Icon(
            Icons.delete_rounded,
            color: Theme.of(context).colorScheme.error,
          )),
    );
  }
}
