import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/available_appointment_bloc/available_appointment_bloc.dart';

import '../../../../core/utils/helpers/logger_helper.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../bloc/appointment_bloc/appointment_bloc.dart';
import '../bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';

class DayPickerTimeLine extends StatefulWidget {
  const DayPickerTimeLine({super.key});

  @override
  State<DayPickerTimeLine> createState() => _DayPickerTimeLineState();
}

class _DayPickerTimeLineState extends State<DayPickerTimeLine> {
  DateTime _selectedValue = DateTime.now();
  DatePickerController controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(LocaleKeys.onlineBooking_date.tr(),
              style: Theme.of(context)
                  .primaryTextTheme
                  .headlineMedium
                  ?.copyWith(color: ColorManager.secondaryColor)),
          CustomDivider(color: ColorManager.secondaryColor.withValues(alpha: 0.2)),
          BlocBuilder<AvailableAppointmentBloc, AvailableAppointmentState>(
              builder: (context, state) {
            return DatePicker(
              controller: controller,
              height: AppSizeH.s100,
              DateTime.now(),
              dateTextStyle: Theme.of(context).textTheme.headlineSmall!,
              dayTextStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 12.sp),
              monthTextStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 12.sp),
              activeDates: state.maybeWhen(
                loaded: (availableDates, availableTimes) {
                  return List.generate(
                    availableDates.length,
                    (index) {
                      DateTime? parsedDate =
                          DateTime.tryParse(availableDates[index]);
                      if (parsedDate != null) {
                        return parsedDate;
                      } else {
                        LoggerService().logCatchDebug(
                            message:
                                'Invalid date format: ${availableDates[index]}');
                        return null;
                      }
                    },
                  )
                      .whereType<DateTime>()
                      .toList(); // Remove null values from the list
                },
                orElse: () => [],
              ),
              initialSelectedDate: null,
              deactivatedColor: ColorManager.softGrey.withValues(alpha: 0.4),
              selectionColor: Theme.of(context).primaryColor,
              selectedTextColor: Colors.white,
              daysCount: 60,
              onDateChange: (date) {
                setState(() {
                  _selectedValue = date;
                  context.read<AppointmentCheckoutBloc>().appointmentDate =
                      DateFormat('yyyy-MM-dd','en').format(date);
                  context
                      .read<AppointmentBloc>()
                      .setSelectedDate(DateFormat('yyyy-MM-dd','en').format(date));
                  context.read<AvailableAppointmentBloc>().add(
                      AvailableAppointmentEvent.determineAvailableTime(
                          DateFormat('yyyy-MM-dd','en').format(date)));
                });
              },
              locale: context.locale.languageCode,
            );
          }),
        ],
      ),
    );
  }
}
