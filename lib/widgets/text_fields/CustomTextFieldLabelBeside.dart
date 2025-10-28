import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/extensions/extensions.dart';
import '../../core/utils/helpers/helper.dart';
import '../../core/utils/resources/color_manager.dart';
import '../../core/utils/resources/validator.dart';
import '../../core/utils/resources/values_manager.dart';

class CustomTextFieldLabelBeside extends StatefulWidget {
  final String? label;
  final bool fitLabel;
  final String? hint;
  final TextEditingController? textEditingController;
  final bool isPassword;
  final bool readOnly;
  final bool useScaffoldColor;
  final int? textAreaFlex;
  final int? labelAreaFlex;
  final bool isTextArea;
  final bool? showShadow;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final String? Function(String?)? validator;
  final String? value;
  final bool? enabled;
  final Color? fillColor;
  final Color? containerColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? inputContentPadding;
  final InputBorder? inputBorder;
  final void Function()? onTap;
  final void Function(String value)? onChanged;
  final TextStyle? labelStyle;
  final double? labelFontSize;
  final int? maxLength;
  final double? styleFontSize;
  final double? width;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;

  const CustomTextFieldLabelBeside(
      {super.key,
      this.label,
      this.showShadow,
      this.textEditingController,
      this.isPassword = false,
      this.textInputType,
      this.suffixIcon,
      this.onChanged,
      this.validator,
      this.prefixIcon,
      this.onTap,
      this.readOnly = false,
      this.isTextArea = false,
      this.value,
      this.padding,
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
      this.width,
      this.textAreaFlex,
      this.labelAreaFlex,
      this.useScaffoldColor = false,
      this.textAlign,
      this.fitLabel = false,
      this.inputContentPadding,
      this.containerColor});

  @override
  @override
  State<CustomTextFieldLabelBeside> createState() =>
      _CustomTextFieldLabelBesideState();
}

class _CustomTextFieldLabelBesideState
    extends State<CustomTextFieldLabelBeside> {
  bool showNewPassword = true;
  bool isHyperLink = false;
  late String value = widget.value ?? '';
  String? error;
  late bool readOnly = widget.readOnly;

  openUrl() {
    Helper.instance.routerHelper.openLink(value);
  }

  @override
  void initState() {
    if (widget.textInputType == TextInputType.url) {
      isHyperLink = true;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CustomTextFieldLabelBeside oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.readOnly != widget.readOnly) {
      readOnly = widget.readOnly;
    }
  }

  RichText checkRequiredFieldAndAddToLabel(String? errorMessage, value) {
    if (errorMessage != null && errorMessage == Validator.requiredField) {
      return RichText(
        text: TextSpan(
          text: widget.label ?? '',
          style: Theme.of(context).inputDecorationTheme.labelStyle,
          children: <TextSpan>[
            TextSpan(
                text: ' ${Validator.requiredField}',
                style: Theme.of(context).inputDecorationTheme.errorStyle),
          ],
        ),
      );
    }
    if (widget.validator != null) {
      if (widget.validator!(value) == Validator.requiredField) {
        return RichText(
          text: TextSpan(
            text: widget.label ?? '',
            style: Theme.of(context).inputDecorationTheme.labelStyle,
            children: <TextSpan>[
              TextSpan(
                  text: ' ${widget.validator!(value)}',
                  style: Theme.of(context).inputDecorationTheme.hintStyle),
            ],
          ),
        );
      }
    }
    return RichText(
      text: TextSpan(
        text: widget.label ?? '',
        style: Theme.of(context).inputDecorationTheme.labelStyle,
      ),
    );
  }

  TextInputAction getTextInputAction() {
    if (widget.textInputType == TextInputType.multiline) {
      return TextInputAction.newline;
    }
    return TextInputAction.next;
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: widget.value,
        builder: (FormFieldState<String> state) {
          return SizedBox(
            height: widget.isTextArea
                ? null
                : (state.errorText != null &&
                        state.errorText != Validator.requiredField)
                    ? AppSizeH.s60
                    : AppSizeH.s50,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: widget.width,
                  height: widget.isTextArea ? null : AppSizeH.s50,
                  clipBehavior: Clip.none,
                  padding: widget.padding ?? const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: widget.containerColor ??
                        ((widget.useScaffoldColor)
                            ? Theme.of(context).scaffoldBackgroundColor
                            : Theme.of(context).inputDecorationTheme.fillColor),
                    border: state.hasError
                        ? Border.all(
                            color: Theme.of(context)
                                    .inputDecorationTheme
                                    .errorBorder
                                    ?.borderSide
                                    .color ??
                                ColorManager.errorLight,
                          )
                        : null,
                    borderRadius: BorderRadius.circular(AppSizeR.s10),
                    boxShadow: (widget.showShadow ?? false)
                        ? [
                            BoxShadow(
                              color: Theme.of(context)
                                  .colorScheme
                                  .shadow
                                  .withOpacity(0.2),
                              offset: const Offset(0, 5),
                              spreadRadius: 0,
                              blurRadius: 2,
                            )
                          ]
                        : null,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.label?.isNotEmpty ?? false)
                        widget.fitLabel
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s8),
                                child: Center(
                                  child: checkRequiredFieldAndAddToLabel(
                                      state.errorText, value),
                                ))
                            : Expanded(
                                flex: widget.labelAreaFlex ?? 3,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSizeW.s8),
                                    child: Center(
                                      child: checkRequiredFieldAndAddToLabel(
                                          state.errorText, value),
                                    )),
                              ),
                      Expanded(
                          flex: widget.textAreaFlex ?? 5,
                          child: TextFormField(
                            controller: widget.textEditingController,
                            maxLines: widget.maxLines ?? 1,
                            minLines: widget.minLines,
                            obscureText:
                                (widget.isPassword) ? showNewPassword : false,
                            readOnly: readOnly,
                            initialValue: widget.textEditingController == null
                                ? widget.value
                                : null,
                            enabled: widget.enabled,
                            keyboardType:
                                widget.textInputType ?? TextInputType.text,
                            textInputAction: getTextInputAction(),
                            style: widget.style ??
                                (isHyperLink
                                    ? Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize: widget.styleFontSize,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.blue,
                                          color: Colors.blue,
                                        )
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: widget.styleFontSize)),
                            validator: widget.validator,
                            inputFormatters: widget.textInputType ==
                                    TextInputType.number
                                ? [FilteringTextInputFormatter.digitsOnly]
                                : (widget.textInputType ==
                                        const TextInputType.numberWithOptions(
                                            decimal: true))
                                    ? [DoubleInputFormatter()]
                                    : null,
                            onTap: () {
                              if (isHyperLink) {
                                openUrl();
                              }
                              widget.onTap?.call();
                            },
                            onChanged: (value) {
                              this.value = value;
                              state.didChange(value);
                              widget.onChanged?.call(value);
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            maxLength: widget.maxLength,
                            decoration: InputDecoration(
                              hintText: widget.hint,
                              hintStyle: widget.hintStyle ??
                                  Theme.of(context)
                                      .inputDecorationTheme
                                      .hintStyle,
                              fillColor: readOnly
                                  ? widget.fillColor ??
                                      ((widget.useScaffoldColor)
                                          ? Theme.of(context)
                                              .scaffoldBackgroundColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .primaryContainer)
                                  : Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                              alignLabelWithHint: true,
                              border: widget.inputBorder,
                              disabledBorder: widget.inputBorder,
                              enabledBorder: widget.inputBorder,
                              errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s8)),
                              contentPadding: widget.inputContentPadding ??
                                  Theme.of(context)
                                      .inputDecorationTheme
                                      .contentPadding ??
                                  EdgeInsets.symmetric(
                                      horizontal: AppSizeW.s5,
                                      vertical: AppSizeH.s2),
                              errorStyle:
                                  const TextStyle(height: 0.1, fontSize: 0.1),
                              labelStyle: widget.labelStyle ??
                                  Theme.of(context)
                                      .inputDecorationTheme
                                      .labelStyle,
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
                              suffixIconColor:
                                  Theme.of(context).colorScheme.secondary,
                              prefixIcon: widget.prefixIcon,
                            ),
                            textAlign: widget.textAlign ?? TextAlign.start,
                          )),
                    ],
                  ),
                ),
                if (state.errorText != null &&
                    state.errorText != Validator.requiredField)
                  Positioned(
                    top: AppSizeH.s50,
                    child: Text(
                      state.errorText ?? '',
                      style: Theme.of(context).inputDecorationTheme.errorStyle,
                    ),
                  )
              ],
            ),
          );
        });
  }
}
