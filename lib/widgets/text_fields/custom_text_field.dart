import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/resources/values_manager.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? prefixText;
  final TextEditingController? textEditingController;
  final bool isPassword;
  final bool? readOnly;
  final bool isTextArea;
  final bool? showShadow;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final String? Function(String?)? validator;
  final String? value;
  final bool? enabled;
  final Color? fillColor;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? inputBorder;
  final void Function()? onTap;
  final void Function(String value)? onChanged;
  final void Function(String value)? onFieldSubmitted;
  final TextStyle? labelStyle;
  final double? labelFontSize;
  final BoxConstraints? suffixIconConstraints;
  final int? maxLength;
  final double? styleFontSize;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;
  final double? height;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField(
      {super.key,
      this.label,
      this.prefixText,
      this.showShadow,
      this.textEditingController,
      this.isPassword = false,
      this.textInputType,
      this.suffixIcon,
      this.onChanged,
      this.validator,
      this.prefixIcon,
      this.onTap,
      this.readOnly,
      this.isTextArea = false,
      this.value,
      this.contentPadding,
      this.labelStyle,
      this.labelFontSize,
      this.styleFontSize,
      this.style,
      this.enabled,
      this.fillColor,
      this.hint,
      this.hintStyle,
      this.minLines,
      this.maxLines,
      this.maxLength,
      this.inputBorder,
      this.onFieldSubmitted,
      this.textInputAction,
      this.textAlign,
      this.suffix,
      this.suffixIconConstraints,
      this.height,
      this.inputFormatters});

  @override
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showNewPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizeR.s8),
        boxShadow: (widget.showShadow ?? false)
            ? [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.2),
                  offset: const Offset(0, 5),
                  spreadRadius: 0,
                  blurRadius: 2,
                )
              ]
            : null,
      ),
      child: TextFormField(
        inputFormatters: const [],
        maxLines: widget.isTextArea ?? false ? widget.maxLines ?? 5 : 1,
        minLines: widget.isTextArea ?? false ? widget.minLines ?? 3 : 1,
        controller: widget.textEditingController,
        obscureText: (widget.isPassword) ? showNewPassword : false,
        readOnly: widget.readOnly ?? false,
        initialValue:
            widget.textEditingController == null ? widget.value : null,
        enabled: widget.enabled,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType ?? TextInputType.text,
        style: widget.style ??
            Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: widget.styleFontSize),
        validator: widget.validator,
        onTap: widget.onTap,
        onFieldSubmitted: widget.onFieldSubmitted,
        onChanged: widget.onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: widget.maxLength,
        decoration: InputDecoration(
          prefixStyle: Theme.of(context).textTheme.bodyMedium,
          hintText: widget.hint?.tr(),
          hintStyle: widget.hintStyle,
          fillColor: widget.fillColor,
          suffixIconConstraints: widget.suffixIconConstraints,
          alignLabelWithHint: true,
          contentPadding: widget.contentPadding,
          border: widget.inputBorder,
          focusedBorder: widget.inputBorder,
          disabledBorder: widget.inputBorder,
          suffix: widget.suffix,
          enabledBorder: widget.inputBorder,
          label: widget.label != null
              ? Text(
                  widget.label ?? '',
                )
              : null,
          labelStyle: widget.labelStyle ??
              Theme.of(context).inputDecorationTheme.labelStyle,
          suffixIcon: (widget.isPassword ?? false)
              ? InkWell(
                  onTap: () {
                    setState(() {
                      showNewPassword = !showNewPassword;
                    });
                  },
                  child: Icon(
                    !showNewPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Theme.of(context).cardColor,
                    size: AppSizeSp.s18,
                  ),
                )
              : widget.suffixIcon,
          suffixIconColor: Theme.of(context).colorScheme.secondary,
          prefixIcon: widget.prefixIcon,
          prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        ),
        textAlign: widget.textAlign ?? TextAlign.start,
      ),
    );
  }
}
