import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/quick_service/domain/entities/quick_service_model.dart';
import '../../../core/utils/helpers/helper.dart';
import '../../../core/utils/resources/color_manager.dart';
import '../../../core/utils/resources/values_manager.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../widgets/custom_containers/card_container.dart';
import '../../../widgets/custom_containers/screen_container.dart';

class BookedQuickServiceDetailsPage extends StatefulWidget {
  const BookedQuickServiceDetailsPage({super.key});

  @override
  State<BookedQuickServiceDetailsPage> createState() => _BookedQuickServiceDetailsPageState();
}

class _BookedQuickServiceDetailsPageState extends State<BookedQuickServiceDetailsPage> {


  late QuickServiceModel quickServiceModel;


  @override
  void didChangeDependencies() {
    quickServiceModel = GoRouterState.of(context).extra as QuickServiceModel;
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
                        Text(Helper.instance.dateHelper.formatDate(quickServiceModel.appointmentDate),
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
                        Text(quickServiceModel.status.name,
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
                        Text(quickServiceModel.type.name,
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
                      Text(LocaleKeys.quickService_branch.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge?.copyWith(color: ColorManager.grayFontColor)),
                      Text(quickServiceModel.dealership.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium)
                    ],
                  ),
                  SizedBox(height: AppSizeH.s4),

                ],
              )),

            ],
          )
      ),
    );
  }
}
