import 'package:flutter/material.dart';
import 'package:mac_mobile/widgets/text_fields/localized_font_text.dart';

import '../../core/utils/resources/color_manager.dart';
import '../../core/utils/resources/values_manager.dart';
import '../custom_containers/basic_container.dart';

class BesideDropDown<T> extends FormField<T> {
  BesideDropDown({
    super.key,
    super.validator,
    final T? value,
    bool autoValidate = false,
    required List<T> items,
    required String Function(T) stringConverter,
    void Function(T?)? onChanged,
    String? label,
    String? hint,
    Color? fillColor,
    double? width,
    int? labelAreaFlex,
    int? textAreaFlex,
    InputBorder? inputBorder,
    TextStyle? labelStyle,
    Widget Function(T)? suffixItem,
    bool showShadow = false,
    bool fitLabel = false,
    bool loading = false,
    bool readOnly = false,
    EdgeInsetsGeometry? contentPadding,
  }) : super(
    autovalidateMode: autoValidate
        ? AutovalidateMode.always
        : AutovalidateMode.onUserInteraction,
    initialValue: value,
    builder: (FormFieldState<T> state) {
      return _BesideDropDownInner<T>(
        formFieldState: state,
        value: value,
        items: items,
        stringConverter: stringConverter,
        onChanged: onChanged,
        label: label,
        hint: hint,
        fillColor: fillColor,
        width: width,
        labelAreaFlex: labelAreaFlex,
        textAreaFlex: textAreaFlex,
        inputBorder: inputBorder,
        labelStyle: labelStyle,
        suffixItem: suffixItem,
        showShadow: showShadow,
        fitLabel: fitLabel,
        loading: loading,
        readOnly: readOnly,
        contentPadding: contentPadding,
      );
    },
  );
}

class _BesideDropDownInner<T> extends StatefulWidget {
  final FormFieldState<T> formFieldState;
  final T? value;
  final List<T> items;
  final String Function(T) stringConverter;
  final void Function(T?)? onChanged;

  final String? label;
  final String? hint;
  final Color? fillColor;
  final double? width;
  final int? labelAreaFlex;
  final int? textAreaFlex;
  final InputBorder? inputBorder;
  final TextStyle? labelStyle;
  final Widget Function(T)? suffixItem;
  final bool showShadow;
  final bool fitLabel;
  final bool loading;
  final bool readOnly;
  final EdgeInsetsGeometry? contentPadding;

  const _BesideDropDownInner({
    required this.formFieldState,
    required this.value,
    required this.items,
    required this.stringConverter,
    this.onChanged,
    this.label,
    this.hint,
    this.fillColor,
    this.width,
    this.labelAreaFlex,
    this.textAreaFlex,
    this.inputBorder,
    this.labelStyle,
    this.suffixItem,
    this.showShadow = false,
    this.fitLabel = false,
    this.loading = false,
    this.readOnly = false,
    this.contentPadding,
  });

  @override
  State<_BesideDropDownInner<T>> createState() =>
      _BesideDropDownInnerState<T>();
}

class _BesideDropDownInnerState<T> extends State<_BesideDropDownInner<T>>
    with TickerProviderStateMixin {
  T? selectedValue;
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool isOpen = false;

  late AnimationController _slideController;
  late AnimationController _fadeController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _arrowRotation;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.formFieldState.value;

    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.fastOutSlowIn,
    ));

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOut,
    );

    _arrowRotation = Tween<double>(begin: 0.0, end: 0.5).animate(
      CurvedAnimation(
        parent: _slideController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant _BesideDropDownInner<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Handle external value changes from the parent widget
    if (widget.value != oldWidget.value && widget.value != selectedValue) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {
            selectedValue = widget.value;
          });
          widget.formFieldState.didChange(widget.value);
        }
      });
    }
  }

  void _toggleDropdown() {
    if (widget.items.isEmpty || widget.readOnly) {
      return;
    }
    if (isOpen) {
      _closeDropdown();
    } else {
      _openDropdown();
    }
  }

  void _openDropdown() {
    _overlayEntry = _createOverlay();
    Overlay.of(context).insert(_overlayEntry!);
    setState(() => isOpen = true);

    _fadeController.value = 1.0;
    _slideController.forward(from: 0);
  }

  void _closeDropdown() {
    if (!mounted) return;

    if (_slideController.isAnimating || _fadeController.isAnimating) return;

    Future.wait([
      if (mounted) _slideController.reverse(),
      if (mounted) _fadeController.reverse(),
    ]).then((_) {
      if (!mounted) return;
      _overlayEntry?.remove();
      _overlayEntry = null;
      setState(() => isOpen = false);
    });
  }





  OverlayEntry _createOverlay() {
      RenderBox renderBox = context.findRenderObject() as RenderBox;
      Size size = renderBox.size;
      Offset offset = renderBox.localToGlobal(Offset.zero);
      ScrollController scrollController = ScrollController();

      List<T> displayedItems = widget.items;

      final mediaQuery = MediaQuery.of(context);
      final screenHeight = mediaQuery.size.height;
      final safeBottom = mediaQuery.padding.bottom;
      const double maxDropdownHeight = 300;
      const double margin = 8.0;

      double dropdownTop = offset.dy + size.height + AppSizeH.s60;

      double availableHeight = screenHeight - dropdownTop - safeBottom - margin;

      double actualDropdownHeight =
      availableHeight < maxDropdownHeight ? availableHeight : maxDropdownHeight;

      if (actualDropdownHeight < 80) {
        dropdownTop = offset.dy - actualDropdownHeight - margin;
        if (dropdownTop < margin) dropdownTop = margin;
      }


      return OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _closeDropdown,
              behavior: HitTestBehavior.translucent,
              child: const SizedBox.expand(),
            ),
          ),
          Positioned(
            left: offset.dx,
            top: dropdownTop,
            width: widget.width ?? size.width,
            child: CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: Offset(0, AppSizeH.s60),
              child: Material(
                color: Colors.transparent,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Container(
                      constraints: BoxConstraints(maxHeight: actualDropdownHeight),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(AppSizeR.s10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Scrollbar(
                              thumbVisibility: true,
                              controller: scrollController,
                              child: ListView(
                                controller: scrollController,
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s10,
                                    vertical: AppSizeH.s10),
                                shrinkWrap: true,
                                children: displayedItems.map((e) {
                                  bool isSelected = e == selectedValue;
                                  return InkWell(
                                    onTap: widget.readOnly
                                        ? null
                                        : () {
                                      setState(() {
                                        selectedValue = e;
                                      });
                                      widget.formFieldState
                                          .didChange(e);
                                      widget.onChanged?.call(e);
                                      _closeDropdown();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 14),
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? Theme.of(context).primaryColor
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                            AppSizeR.s10),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Tooltip(
                                              message:
                                              widget.stringConverter(e),
                                              waitDuration: const Duration(
                                                  milliseconds: 500),
                                              child: LocalizedFontText(
                                                widget.stringConverter(e),
                                                overflow:
                                                TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: isSelected
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (widget.suffixItem != null)
                                            widget.suffixItem!(e),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
    _slideController.dispose();
    _fadeController.dispose();
    super.dispose();
  }


  Text _buildLabel() {
    return Text(
      widget.label ?? '',
      style: widget.labelStyle ??
          Theme.of(context).textTheme.labelLarge,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isDisabled = widget.items.isEmpty || widget.readOnly;
    final state = widget.formFieldState;

    return BasicContainer(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null) _buildLabel(),
          SizedBox(height: AppSizeH.s10),
          CompositedTransformTarget(
            link: _layerLink,
            child: InkWell(
              onTap: () => _toggleDropdown(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: widget.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 14),
                    decoration: BoxDecoration(
                      color: widget.fillColor ??
                          Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(AppSizeR.s15),
                      border: state.hasError
                          ? Border.all(
                        color: Theme.of(context)
                            .inputDecorationTheme
                            .errorBorder
                            ?.borderSide
                            .color ??
                            ColorManager.errorLight,
                      )
                          : Border.all(color: Colors.transparent),
                      boxShadow: widget.showShadow
                          ? [
                        BoxShadow(
                          color: Theme.of(context)
                              .colorScheme
                              .shadow
                              .withValues(alpha: 0.2),
                          offset: const Offset(5, 5),
                          blurRadius: 2,
                        )
                      ]
                          : null,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            selectedValue != null
                                ? widget.stringConverter(selectedValue!)
                                : (widget.hint ?? ''),
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                              color: isDisabled
                                  ? ColorManager.softGrey
                                  : (selectedValue == null
                                  ? ColorManager.softGrey
                                  : ColorManager
                                  .primaryColorDark),
                            ),
                          ),
                        ),
                        RotationTransition(
                          turns: _arrowRotation,
                          child: Icon(
                            Icons.arrow_drop_down_rounded,
                            color: isDisabled
                                ? ColorManager.softGrey
                                : Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget.loading)
                    SizedBox(
                      width: widget.width,
                      child: Padding(
                        padding: EdgeInsets.only(top: AppSizeH.s4),
                        child: LinearProgressIndicator(
                          minHeight: 2,
                          backgroundColor: Theme.of(context).colorScheme.surface,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  if (state.hasError)
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSizeW.s22,
                          vertical: AppSizeH.s4),
                      child: Text(
                        state.errorText.toString(),
                        style: TextStyle(
                          color: ColorManager.error,
                          fontSize: AppSizeSp.s14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
