import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';
import '../custom_containers/basic_container.dart';

class SearchInputWidget extends StatefulWidget {
  final Function()? onSearchTap;
  final Function(String? value)? onValueChanged;
  final Function()? onCancelSearch;
  final String? initialValue;
  final EdgeInsets? padding;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const SearchInputWidget(
      {super.key,
      this.initialValue,
      this.onSearchTap,
      this.onValueChanged,
      this.padding,
      this.validator,
      this.onCancelSearch,
      this.controller});

  @override
  State<SearchInputWidget> createState() => _SearchInputWidgetState();
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  late final TextEditingController _controller =
      widget.controller ?? TextEditingController(text: widget.initialValue);
  bool showClear = false;

  @override
  Widget build(BuildContext context) {
    showClear = (_controller.text.isNotEmpty && widget.onCancelSearch != null);
    return Container(
      padding: widget.padding,
      height: AppSizeH.s50,
      child: TextFormField(
        controller: _controller,
        textInputAction: TextInputAction.search,
        onChanged: (value) {
          if (widget.onCancelSearch != null &&
              showClear !=
                  (_controller.text.isNotEmpty &&
                      widget.onCancelSearch != null)) {
            showClear =
                (_controller.text.isNotEmpty && widget.onCancelSearch != null);
            setState(() {});
          }
          widget.onValueChanged?.call(value);
        },
        maxLines: 2,
        style: Theme.of(context).textTheme.bodyMedium,
        minLines: 1,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: 'Search',
          contentPadding: EdgeInsets.symmetric(
              horizontal: AppSizeW.s7, vertical: AppSizeH.s7),
          prefixIconConstraints: const BoxConstraints.tightFor(),
          prefixIcon: GestureDetector(
            onTap: widget.onSearchTap,
            child: BasicContainer(
              color: Theme.of(context).inputDecorationTheme.fillColor,
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizeW.s7, vertical: AppSizeW.s7),
              margin: EdgeInsetsDirectional.only(
                  start: AppSizeW.s7, end: AppSizeW.s7),
              height: AppSizeH.s35,
              width: AppSizeH.s35,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.16),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                )
              ],
              child: (showClear)
                  ? GestureDetector(
                      onTap: () {
                        _controller.clear();
                        widget.onCancelSearch?.call();
                      },
                      child: Icon(
                        CupertinoIcons.clear_circled,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    )
                  : Icon(Icons.search, size: AppSizeSp.s20),
            ),
          ),
        ),
      ),
    );
  }
}
