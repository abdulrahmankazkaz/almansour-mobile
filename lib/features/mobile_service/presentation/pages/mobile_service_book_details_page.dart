import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/widgets/custom_containers/card_container.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../entities/booked_mobile_service/booked_mobile_service.dart';

class MobileServiceBookDetailsPage extends StatefulWidget {
  const MobileServiceBookDetailsPage({super.key});

  @override
  State<MobileServiceBookDetailsPage> createState() => _MobileServiceBookDetailsPageState();
}

class _MobileServiceBookDetailsPageState extends State<MobileServiceBookDetailsPage> {

  late BookedMobileService mobileService;

  @override
  void didChangeDependencies() {
    mobileService = GoRouterState.of(context).extra as BookedMobileService;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.mobileService_bookDetails.tr())),
      body: ScreenContainer(
        padding: EdgeInsets.all(AppSizeW.s20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded,color: Theme.of(context).primaryColor),
                      SizedBox(width: AppSizeW.s2),
                      Text(LocaleKeys.mobileService_bookDetails.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium),
                    ],
                  ),
                  SizedBox(height: AppSizeH.s10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(LocaleKeys.mobileService_bookDate.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                      Text(Helper.instance.dateHelper.formatDate(mobileService.appointmentDate),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium)
                    ],
                  ),
                  SizedBox(height: AppSizeH.s10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(LocaleKeys.onlineBooking_status.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                      Text(mobileService.status.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium)
                    ],
                  ),
                  SizedBox(height: AppSizeH.s10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(LocaleKeys.mobileService_type.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                      Text(mobileService.type.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSizeH.s20),
            CardContainer(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_rounded ,color: Theme.of(context).primaryColor),
                    SizedBox(width: AppSizeW.s2),
                    Text(LocaleKeys.mobileService_bookLocation.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium),
                  ],
                ),
                SizedBox(height: AppSizeH.s10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.profile_city.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                    Text(mobileService.city.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium)
                  ],
                ),
                SizedBox(height: AppSizeH.s4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.mobileService_area.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                    Text(mobileService.area.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium)
                  ],
                ),
                SizedBox(height: AppSizeH.s4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.mobileService_street.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                    Text(mobileService.street.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium)
                  ],
                ),
              ],
            )),

          ],
        )
      ),
    );
  }
}



