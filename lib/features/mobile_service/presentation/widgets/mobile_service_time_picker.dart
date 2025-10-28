import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../online_booking/entities/available_time/available_time.dart';
import '../bloc/mobile_service_available_appointments_bloc/mobile_service_available_appointment_bloc.dart';
import '../bloc/mobile_service_bloc/mobile_service_bloc.dart';

class MobileServiceAppointmentTimePicker extends StatefulWidget {
  const MobileServiceAppointmentTimePicker({super.key});

  @override
  State<MobileServiceAppointmentTimePicker> createState() => _MobileServiceAppointmentTimePickerState();
}

class _MobileServiceAppointmentTimePickerState extends State<MobileServiceAppointmentTimePicker> {
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
    AvailableTime(time: '15:00', isAvailable: false)
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
          CustomDivider(color: ColorManager.secondaryColor.withOpacity(0.2)),
          BlocConsumer<MobileServiceAvailableAppointmentBloc, MobileServiceAvailableAppointmentState>(
              listener: (context, state) {
                timeList = state.maybeWhen(
                    loaded: (availableDates, availableTimes) {
                      return availableTimes ?? timeList;
                    },
                    orElse: () => timeList);
                disabledIndex = state.maybeWhen(
                  loaded: (availableDates, availableTimes) {
                    return availableTimes?.asMap().entries.where((entry) => !entry.value.isAvailable).map((entry) => entry.key).toList() ?? List.generate(timeList.length, (index) => index);
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
                                context.read<MobileServiceBloc>().selectedTime = timeList[index].time;
                                if (!disabledIndex.contains(index)) {
                                  setState(() {
                                    isSelectedIndex = index;
                                  });
                                }
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.symmetric(horizontal: AppSizeW.s6),
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
                                            .headlineSmall?.copyWith(
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
