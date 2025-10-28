import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/extensions/extensions.dart';
import '../../core/utils/helpers/helper.dart';
import '../../core/utils/resources/color_manager.dart';
import '../../core/utils/resources/values_manager.dart';

class CustomTextFieldTimePickerLabelBeside extends StatefulWidget {
  final String? label;
  final String Function(DateTime)? dateFormat;
  final bool pickDate;
  final bool fitLabel;
  final String? hint;
  final String? initialTime;
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
  final EdgeInsets? contentPadding;
  final EdgeInsets? inputContentPadding;
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

  const CustomTextFieldTimePickerLabelBeside(
      {super.key,
      this.label,
      this.showShadow,
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
      this.width,
      this.textAreaFlex,
      this.labelAreaFlex,
      this.useScaffoldColor = false,
      this.textAlign,
      this.fitLabel = false,
      this.inputContentPadding,
      this.initialTime,
      this.dateFormat,
      this.pickDate = false});

  @override
  @override
  State<CustomTextFieldTimePickerLabelBeside> createState() =>
      _CustomTextFieldTimePickerLabelBesideState();
}

class _CustomTextFieldTimePickerLabelBesideState
    extends State<CustomTextFieldTimePickerLabelBeside> {
  bool showNewPassword = true;
  late TimeOfDay? selectedTime =
      Helper.instance.dateHelper.timeFromString(widget.initialTime ?? '');
  DateTime? selectedDate;
  String? error;
  late final TextEditingController textEditingController =
      TextEditingController(text: widget.value);
  FormFieldState<String>? state;

  void _selectTime() async {
    if (widget.pickDate) {
      selectedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate ?? DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
      );
      if (selectedDate != null) {
        textEditingController.text = widget.dateFormat?.call(selectedDate!) ??
            Helper.instance.dateHelper.formatDateJustDate(selectedDate!) ??
            '';
        widget.validator?.call(textEditingController.text);
        try {
          FocusScope.of(context).nextFocus();
        } catch (e) {}
      }
    } else {
      selectedTime = await showTimePicker(
        context: context,
        initialTime: selectedTime ?? TimeOfDay.fromDateTime(DateTime.now()),
      );
      if (selectedTime != null) {
        textEditingController.text =
            Helper.instance.dateHelper.formatTime24(selectedTime);
        widget.validator?.call(textEditingController.text);
        try {
          FocusScope.of(context).nextFocus();
        } catch (e) {}
      }
    }
  }

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      state?.didChange.call(textEditingController.text);
      widget.onChanged?.call(textEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: widget.value,
        builder: (FormFieldState<String> state) {
          this.state = state;
          return SizedBox(
            height: widget.isTextArea ? null : AppSizeH.s50,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: widget.width,
                  height: widget.isTextArea ? null : AppSizeH.s55,
                  clipBehavior: Clip.none,
                  padding: widget.contentPadding ?? const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: widget.fillColor ??
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
                                  child: Row(
                                    children: [
                                      const Icon(Icons.alarm),
                                      SizedBox(
                                        width: AppSizeH.s2,
                                      ),
                                      Text(
                                        widget.label ?? '',
                                        style: Theme.of(context)
                                            .inputDecorationTheme
                                            .labelStyle
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ))
                            : Expanded(
                                flex: widget.labelAreaFlex ?? 3,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSizeW.s8),
                                    child: Center(
                                      child: Text(
                                        widget.label ?? '',
                                        style: Theme.of(context)
                                            .inputDecorationTheme
                                            .labelStyle
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                      Expanded(
                          flex: widget.textAreaFlex ?? 5,
                          child: TextFormField(
                            controller: textEditingController,
                            maxLines: widget.maxLines ?? 1,
                            minLines: widget.minLines,
                            obscureText:
                                (widget.isPassword) ? showNewPassword : false,
                            readOnly: true,
                            enabled: widget.enabled,
                            keyboardType:
                                widget.textInputType ?? TextInputType.text,
                            style: widget.style ??
                                Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: widget.styleFontSize),
                            validator: widget.validator,
                            inputFormatters: widget.textInputType ==
                                    TextInputType.number
                                ? [FilteringTextInputFormatter.digitsOnly]
                                : widget.textInputType ==
                                        const TextInputType.numberWithOptions(
                                            decimal: true)
                                    ? [DoubleInputFormatter()]
                                    : null,
                            onTap: _selectTime,
                            onChanged: (value) {
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
                              fillColor: widget.readOnly
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
                            textAlign: widget.textAlign ?? TextAlign.center,
                          )),
                    ],
                  ),
                ),
                if (state.errorText != null)
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
