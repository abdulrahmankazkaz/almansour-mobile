import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/widgets/custom_containers/card_container.dart';

import '../../core/utils/resources/resources.dart';
import '../custom_divider/screen_divider.dart';




class CustomGlobalDayPicker<B extends StateStreamable<S>, S>
    extends StatefulWidget {
  final String? label;
  final List<DateTime> Function(S state) extractActiveDates;
  final void Function(DateTime selectedDate) onDateChange;
  final B bloc;

  /// External notifier to control the selected date
  final ValueNotifier<DateTime?> selectedDateNotifier;

  const CustomGlobalDayPicker({
    super.key,
    required this.bloc,
    required this.extractActiveDates,
    required this.onDateChange,
    required this.selectedDateNotifier,
    this.label,
  });

  @override
  State<CustomGlobalDayPicker<B, S>> createState() =>
      _CustomGlobalDayPickerState<B, S>();
}

class _CustomGlobalDayPickerState<B extends StateStreamable<S>, S>
    extends State<CustomGlobalDayPicker<B, S>> {
  final ScrollController _scrollController = ScrollController();

  static const arabicMonthNames = [
    'كانون الثاني', 'شباط', 'آذار', 'نيسان', 'أيار', 'حزيران',
    'تموز', 'آب', 'أيلول', 'تشرين الأول', 'تشرين الثاني', 'كانون الأول'
  ];
  static const englishMonthNames = [
    'JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN',
    'JUL', 'AUG', 'SEPT', 'OCT', 'NOV', 'DEC'
  ];

  static const arabicDayNames = [
    'الأحد',
    'الإثنين',
    'الثلاثاء',
    'الأربعاء',
    'الخميس',
    'الجمعة',
    'السبت'
  ];
  static const englishDayNames = [
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT'
  ];

  String getDayName(DateTime date) {
    if (context.locale.languageCode == 'ar') {
      return arabicDayNames[date.weekday % 7];
    } else {
      return englishDayNames[date.weekday % 7];
    }
  }

  bool isSameDate(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  @override
  void initState() {
    super.initState();
    widget.selectedDateNotifier.addListener(() {
      setState(() {}); // rebuild when external selected date changes
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          ...{Text(
            widget.label!,
            style: Theme
                .of(context)
                .primaryTextTheme
                .headlineMedium
                ?.copyWith(color: ColorManager.secondaryColor),
          ),
          SizedBox(height: AppSizeH.s10)
          },
        CardContainer(
          withShadow: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomDivider(color: ColorManager.secondaryColor.withValues(alpha: 0.2)),
              BlocBuilder<B, S>(
                bloc: widget.bloc,
                builder: (context, state) {
                  final List<DateTime> activeDates = widget.extractActiveDates(state);
                  return SizedBox(
                    height: AppSizeH.s100,
                    child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: 60,
                      itemBuilder: (context, index) {
                        final startDate =
                        activeDates.isNotEmpty ? activeDates.first : DateTime.now();
                        final date = startDate.add(Duration(days: index));

                        final isActive = activeDates.any((d) => isSameDate(d, date));
                        final isSelected = widget.selectedDateNotifier.value != null &&
                            isSameDate(date, widget.selectedDateNotifier.value!);

                        return GestureDetector(
                          onTap: isActive
                              ? () {
                            widget.selectedDateNotifier.value = date;
                            widget.onDateChange(date);
                          }
                              : null,
                          child: Container(
                            width: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Theme.of(context).primaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  context.locale.languageCode == 'ar'
                                      ? arabicMonthNames[date.month - 1]
                                      : englishMonthNames[date.month - 1],
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                    fontSize: AppSizeSp.s14,
                                    color: isSelected
                                        ? Colors.white
                                        : isActive
                                        ? Colors.black
                                        : ColorManager.softGrey.withValues(alpha: 0.4),
                                  ),
                                ),
                                SizedBox(height: AppSizeH.s8),
                                Text(
                                  date.day.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                    color: isSelected
                                        ? Colors.white
                                        : isActive
                                        ? Colors.black
                                        : ColorManager.softGrey.withValues(alpha: 0.4),
                                  ),
                                ),
                                SizedBox(height: AppSizeH.s8),
                                Text(
                                  getDayName(date),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                    fontSize: AppSizeSp.s14,
                                    color: isSelected
                                        ? Colors.white
                                        : isActive
                                        ? Colors.black
                                        : ColorManager.softGrey.withValues(alpha: 0.4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
