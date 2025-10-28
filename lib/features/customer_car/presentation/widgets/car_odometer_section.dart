import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mac_mobile/features/customer_car/presentation/bloc/odometer_bloc/odometer_bloc.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/values_manager.dart';
import '../../../../generated/locale_keys.g.dart';

class CarOdometerSection extends StatefulWidget {
  const CarOdometerSection(
      {super.key, required this.odometer, required this.carId});

  final String odometer;
  final int carId;

  @override
  State<CarOdometerSection> createState() => _CarOdometerSectionState();
}

class _CarOdometerSectionState extends State<CarOdometerSection> {
  late String odo =
      Helper.instance.functionsHelper.addLeadingZeros(widget.odometer);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(LocaleKeys.customer_car_myOdometer.tr(),
            style: Theme.of(context).primaryTextTheme.headlineMedium?.copyWith(fontSize: 20.sp)),
        SizedBox(height: AppSizeH.s10),
        Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BlocConsumer<OdometerBloc, OdometerState>(
                  listener: (context, state) => state.maybeWhen(
                        updated: (customerCar) =>
                            odo = Helper.instance.functionsHelper.addLeadingZeros(customerCar.odometer.toString()),
                        orElse: () {
                          return null;
                        },
                      ),
                  builder: (context, state) {
                    return Directionality(
                      textDirection: ui.TextDirection.ltr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                              odo.length,
                              (index) => Container(
                                    margin: EdgeInsets.only(right: AppSizeW.s9),
                                    width: AppSizeW.s50,
                                    height: AppSizeW.s50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(AppSizeR.s15),
                                        color: Theme.of(context).cardColor),
                                    child: Center(
                                        child: Text(odo[index],
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(fontSize: 28.sp))),
                                  )),
                        ],
                      ),
                    );
                  }),
              SizedBox(width: AppSizeW.s6),
              Text(LocaleKeys.customer_car_km.tr())
            ]),
        SizedBox(height: AppSizeH.s40),
      ],
    );
  }
}
