import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/resources/values_manager.dart';
import 'custom_text_field.dart';

class CustomTextFieldWithUpperLabel extends StatelessWidget {
  const CustomTextFieldWithUpperLabel(
      {super.key,
      required this.label,
      this.hint = '',
      required this.controller,
      this.onTap,
      this.validator,
      this.textInputType,
      this.readOnly = false,
      this.isLeftToRight = false,
      this.inputFormatters});

  final String label;
  final String hint;
  final bool readOnly;
  final bool isLeftToRight;
  final TextEditingController controller;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizeH.s6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: AppSizeH.s6),
            child: Text(label.tr(),
                style: Theme.of(context).primaryTextTheme.bodyMedium),
          ),
          isLeftToRight
              ? Directionality(
                  textDirection: ui.TextDirection.ltr,
                  child: CustomTextField(
                    inputFormatters: inputFormatters,
                    textInputType: textInputType,
                    contentPadding: EdgeInsets.zero,
                    onTap: onTap,
                    hint: hint,
                    validator: validator,
                    textEditingController: controller,
                    readOnly: readOnly,
                  ))
              : CustomTextField(
                  inputFormatters: inputFormatters,
                  textInputType: textInputType,
                  contentPadding: EdgeInsets.symmetric(horizontal:  AppSizeW.s10,vertical: AppSizeH.s16),
                  onTap: onTap,
                  hint: hint,
                  validator: validator,
                  textEditingController: controller,
                  readOnly: readOnly,
                ),
        ],
      ),
    );
  }
}
