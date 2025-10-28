import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/features/online_booking/entities/available_time/available_time.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/available_appointment_bloc/available_appointment_bloc.dart';

import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../bloc/appointment_bloc/appointment_bloc.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  List<int> disabledIndex = [];
  int isSelectedIndex = -1;
  List<AvailableTime> timeList = [
    AvailableTime(time: '08:00', isAvailable: false),
    AvailableTime(time: '09:00', isAvailable: false),
    AvailableTime(time: '10:00', isAvailable: false),
    AvailableTime(time: '11:00', isAvailable: false),
    AvailableTime(time: '12:00', isAvailable: false),
    AvailableTime(time: '13:00', isAvailable: false),
    AvailableTime(time: '14:00', isAvailable: false),
    AvailableTime(time: '13:00', isAvailable: false)
  ];

  @override
  void initState() {
    disabledIndex = List.generate(timeList.length, (index) => index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(LocaleKeys.onlineBooking_time.tr(),
              style: Theme.of(context)
                  .primaryTextTheme
                  .headlineMedium
                  ?.copyWith(color: ColorManager.secondaryColor)),
          CustomDivider(color: ColorManager.secondaryColor.withValues(alpha: 0.2)),
          BlocConsumer<AvailableAppointmentBloc, AvailableAppointmentState>(
              listener: (context, state) {
                timeList = state.maybeWhen(
                    loaded: (availableDates, availableTimes) {
                      return availableTimes ?? timeList;
                    },
                    orElse: () => timeList);
                disabledIndex = state.maybeWhen(
                    loaded: (availableDates, availableTimes) {
                      return availableTimes
                              ?.asMap()
                              .entries
                              .where((entry) => !entry.value.isAvailable)
                              .map((entry) => entry.key)
                              .toList() ??
                          List.generate(timeList.length, (index) => index);
                    },
                    orElse: () => List.generate(timeList.length, (index) => index));
              },
              buildWhen: (previous, current) =>
                  current.maybeMap(orElse: () => true),
              builder: (context, state) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      // physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: timeList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent:
                              MediaQuery.sizeOf(context).height * 0.08),
                      itemBuilder: (context, index) => Center(
                            child: InkWell(
                              onTap: () {

                                if (!disabledIndex.contains(index)) {
                                  setState(() {
                                    isSelectedIndex = index;
                                  });
                                  context
                                      .read<AppointmentBloc>()
                                      .setSelectedTime(timeList[index].time);
                                  context.read<AppointmentCheckoutBloc>().appointmentTime = timeList[index].time;
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s6),
                                padding: EdgeInsets.all(AppSizeW.s5),
                                decoration: BoxDecoration(
                                    color: isSelectedIndex == index
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent,
                                    borderRadius:
                                        BorderRadius.circular(AppSizeR.s15)),
                                child: Text(timeList[index].time,
                                    textAlign: TextAlign.center,
                                    style: disabledIndex.contains(index)
                                        ? Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                color: ColorManager.softGrey
                                                    .withOpacity(0.4))
                                        : Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                color: isSelectedIndex == index
                                                    ? ColorManager.whiteGrey
                                                    : ColorManager
                                                        .secondaryColor)),
                              ),
                            ),
                          )),
                );
              }),
          CustomDivider(color: ColorManager.softGrey.withOpacity(0.2)),
        ],
      ),
    );
  }
}
