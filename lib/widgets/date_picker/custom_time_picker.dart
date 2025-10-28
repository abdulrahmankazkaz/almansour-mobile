import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';

import '../../core/utils/resources/color_manager.dart';
import '../../generated/locale_keys.g.dart';
import '../custom_containers/card_container.dart';
import '../custom_divider/screen_divider.dart';

class CustomTimePicker<T> extends StatefulWidget {
  final String label;
  final BlocBase<T> bloc;
  final List<String> Function(T state) extractTimes;
  final List<int> Function(T state) extractDisabledIndices;
  final void Function(String time) onTimeSelected;

  const CustomTimePicker({
    super.key,
    required this.label,
    required this.bloc,
    required this.extractTimes,
    required this.extractDisabledIndices,
    required this.onTimeSelected,
  });

  @override
  State<CustomTimePicker<T>> createState() => _CustomTimePickerState<T>();
}

class _CustomTimePickerState<T> extends State<CustomTimePicker<T>> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocBase<T>, T>(
      bloc: widget.bloc,
      builder: (context, state) {
        final times = widget.extractTimes(state);
        final disabledIndices = widget.extractDisabledIndices(state);
        return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(widget.label,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            SizedBox(height: AppSizeH.s10),
            CardContainer(
              width: MediaQuery.sizeOf(context).width,
              withShadow: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CustomDivider(
                  //     color: ColorManager.secondaryColor.withValues(alpha: 0.2)),
                  if (times.isEmpty)
                    Text(
                      LocaleKeys.onlineBooking_noTimeAvailable.tr(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  if (times.isNotEmpty)
                    Align(
                      alignment: Alignment.topCenter,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: times.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: MediaQuery.sizeOf(context).width * 0.1,
                        ),
                        itemBuilder: (context, index) {
                          final isDisabled = disabledIndices.contains(index);
                          final isSelected = selectedIndex == index;
                          return InkWell(
                            onTap: isDisabled
                                ? null
                                : () {
                                    setState(() => selectedIndex = index);
                                    widget.onTimeSelected(times[index]);
                                  },
                            child: Container(
                              margin:  EdgeInsets.all(AppSizeW.s6),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: isDisabled
                                      ? Colors.grey.shade300
                                      : Theme.of(context).primaryColor,
                                  width: 1.2,
                                ),
                              ),
                              child: Text(
                                times[index],
                                style: TextStyle(
                                  color: isDisabled
                                      ? Colors.grey.withValues(alpha: 0.5)
                                      : isSelected
                                          ? Colors.white
                                          : Colors.black87,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
