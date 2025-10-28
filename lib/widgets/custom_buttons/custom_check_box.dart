import 'package:flutter/material.dart';
import 'package:mac_mobile/core/utils/resources/color_manager.dart';

import '../../core/utils/resources/values_manager.dart';
import '../custom_containers/basic_container.dart';

class CustomCheckBoxWidget extends StatefulWidget {
  final bool? value;
  final String label;
  final bool readOnly;
  final Function(bool? value) onChanged;
  final TextStyle? labelStyle;
  final Widget? suffix;
  final MainAxisSize mainAxisSize;

  const CustomCheckBoxWidget(
      {super.key,
      this.value,
      this.mainAxisSize = MainAxisSize.min,
      required this.onChanged,
      required this.label,
      this.readOnly = false,
      this.labelStyle,
      this.suffix});

  @override
  State<CustomCheckBoxWidget> createState() => _CustomCheckBoxWidgetState();
}

class _CustomCheckBoxWidgetState extends State<CustomCheckBoxWidget> {
  late bool? value = widget.value;
  late bool readOnly = widget.readOnly;

  @override
  void didUpdateWidget(covariant CustomCheckBoxWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.readOnly != widget.readOnly) {
      readOnly = widget.readOnly;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {});
      });
    }
  }

  toggleUpdateValue({bool? selected}) {
    selected ??= !(value ?? false);
    if (!readOnly) {
      value = selected;
      widget.onChanged.call(selected);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        toggleUpdateValue();
      },
      child: BasicContainer(
        color: Colors.transparent,
        height: AppSizeH.s50,
        child: Row(
          mainAxisSize: widget.mainAxisSize,
          children: [
            Checkbox(
              value: value ?? false,
              checkColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizeR.s7),
                  side: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimaryContainer)),
              onChanged: (selected) {
                toggleUpdateValue(selected: selected);
              },
            ),
            Text(
              widget.label,
              style: widget.labelStyle ??
                  Theme.of(context)
                      .inputDecorationTheme
                      .labelStyle
                      ?.copyWith(fontWeight: FontWeight.w600,color: ColorManager.surface),
            ),
            const SizedBox(
              width: 9.0,
            ),
            if (widget.suffix != null) widget.suffix!,
          ],
        ),
      ),
    );
  }
}
