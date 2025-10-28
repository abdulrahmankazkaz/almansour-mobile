import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mac_mobile/features/customer_car/presentation/bloc/odometer_bloc/odometer_bloc.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';

class OilChangeReminderSection extends StatefulWidget {
  const OilChangeReminderSection({
    super.key, required this.odometer,
  });
  final int odometer;

  @override
  State<OilChangeReminderSection> createState() => _OilChangeReminderSectionState();
}

class _OilChangeReminderSectionState extends State<OilChangeReminderSection> {
  late int odo = widget.odometer;
  double computeRemainingForOilChange(int odometer){
    double decimalOdometer = odometer / 10000;

    if(odometer <= 10000){
      return decimalOdometer;
    }
    else{
      double remaining = decimalOdometer - decimalOdometer.toInt();
      return remaining;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(LocaleKeys.customer_car_oilChange.tr(),
            style: Theme.of(context)
                .primaryTextTheme
                .headlineMedium
                ?.copyWith(
                fontSize: 20.sp)),
        SizedBox(height: AppSizeH.s20),
        BlocConsumer<OdometerBloc,OdometerState>(

            listener: (context, state) => state.mapOrNull(
              updated:  (value) => odo = value.customerCar.odometer,
            ),
            builder: (context,state) {
              return LinearProgressIndicator(
                value: computeRemainingForOilChange(odo),
                minHeight: AppSizeH.s8,
                borderRadius: BorderRadius.circular(AppSizeR.s8),
              );
            }
        ),
        SizedBox(height: AppSizeH.s10),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('0 ${LocaleKeys.customer_car_km.tr()}',
                  style: Theme.of(context).textTheme.bodySmall),
              Text('10.000 ${LocaleKeys.customer_car_km.tr()}',
                  style: Theme.of(context).textTheme.bodySmall)
            ]),
      ],
    );
  }
}