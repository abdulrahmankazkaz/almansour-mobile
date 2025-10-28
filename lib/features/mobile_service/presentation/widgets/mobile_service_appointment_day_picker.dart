import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/helpers/logger_helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../bloc/mobile_service_available_appointments_bloc/mobile_service_available_appointment_bloc.dart';
import '../bloc/mobile_service_bloc/mobile_service_bloc.dart';

class MobileServiceAppointmentDayPicker extends StatefulWidget {
  const MobileServiceAppointmentDayPicker({super.key});

  @override
  State<MobileServiceAppointmentDayPicker> createState() => _MobileServiceAppointmentDayPicker();
}

class _MobileServiceAppointmentDayPicker extends State<MobileServiceAppointmentDayPicker> {
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
          BlocBuilder<MobileServiceAvailableAppointmentBloc, MobileServiceAvailableAppointmentState>(
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
                        DateTime? parsedDate = DateTime.tryParse(availableDates[index]);
                        if (parsedDate != null) {
                          return parsedDate;
                        } else {
                          LoggerService().logCatchDebug(message: 'Invalid date format: ${availableDates[index]}');
                          return null;
                        }
                      },
                    ).whereType<DateTime>().toList();  // Remove null values from the list
                  },
                orElse: () => [],
              ),
              initialSelectedDate: null,
              deactivatedColor: ColorManager.softGrey.withOpacity(0.4),
              selectionColor: Theme.of(context).primaryColor,
              selectedTextColor: Colors.white,
              daysCount: 60,
              onDateChange: (date) {
                setState(() {
                  _selectedValue = date;
                  context.read<MobileServiceBloc>().selectedDate = Helper.instance.dateHelper.formatDateJustDate(date)??'';
                  context.read<MobileServiceAvailableAppointmentBloc>().add(MobileServiceAvailableAppointmentEvent.determineAvailableTime(Helper.instance.dateHelper.formatDateJustDate(date)??''));
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
