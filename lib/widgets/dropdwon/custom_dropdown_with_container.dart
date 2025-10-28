import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/models/basic_models/basic_model/basic_model.dart';
import '../../core/utils/resources/color_manager.dart';
import '../../core/utils/resources/values_manager.dart';

class CustomDropdownWithContainer extends StatefulWidget {
  const CustomDropdownWithContainer({
    super.key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    required this.width,
    this.height,
    this.borderColor,
    this.radius,
    this.color,
    this.textColor,
    this.hint,
    required this.itemAdd,
  });

  final BasicModel? selectedValue;
  final List<BasicModel> items;
  final void Function(BasicModel?)? onChanged;
  final double width;
  final double? height;
  final double? radius;
  final Color? borderColor;
  final Color? color;
  final Color? textColor;
  final String itemAdd;
  final String? hint;

  @override
  State<CustomDropdownWithContainer> createState() =>
      _CustomDropdownWithContainerState();
}

class _CustomDropdownWithContainerState
    extends State<CustomDropdownWithContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    BasicModel? selectedValue = widget.selectedValue;

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(widget.radius ?? AppSizeR.s15),
          border: Border.all(color: widget.borderColor ?? Colors.transparent),
          color: widget.color ?? Colors.transparent,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<BasicModel>(
            isExpanded: true,
            value: selectedValue,
            hint: Text(
              (widget.hint ?? '').tr(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
            dropdownColor: Theme.of(context).cardColor,
            icon: const Icon(Icons.arrow_drop_down_rounded),
            onChanged: widget.onChanged,
            items: widget.items.map((BasicModel item) {
              return DropdownMenuItem<BasicModel>(
                value: item,
                child: Text(
                  item.name + widget.itemAdd,
                  style: widget.textColor != null
                      ? Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: widget.textColor)
                      : Theme.of(context).primaryTextTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
