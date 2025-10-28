import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/appointment_bloc/appointment_bloc.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../entities/dealership/dealership.dart';
import '../bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';
import '../bloc/available_appointment_bloc/available_appointment_bloc.dart';
import 'dealership_card.dart';

class DealershipsSection extends StatelessWidget {
  const DealershipsSection(
      {super.key, required this.dealerships, this.isInternal = true});

  final List<Dealership> dealerships;
  final bool isInternal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( LocaleKeys.dealership_chooseYourProvider.tr(),
            style: Theme
                .of(context)
                .textTheme
                .headlineSmall),
        ListView.separated(
          padding: EdgeInsets.symmetric(vertical: AppSizeH.s15),
          shrinkWrap: true,
          itemCount: dealerships.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>
              DealershipCard(
                  img: dealerships[index].image,
                  title: dealerships[index].name ?? '',
                  onTap: () {
                    context.read<AppointmentCheckoutBloc>().dealershipId = dealerships[index].id;
                    context.read<AppointmentBloc>().setSelectedDealershipId(dealerships[index].id);
                    context.read<AvailableAppointmentBloc>().setSelectedDealershipId(dealerships[index].id);
                    context.push(RoutesPaths.onlineBookingRoute);
                  }),
          separatorBuilder: (context, index) => SizedBox(height: AppSizeH.s15),
        ),
      ],
    );
  }
}