import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../app/dependency_injection.dart';
import '../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../core/utils/helpers/helper.dart';
import '../../../core/utils/local_storage/app_preferences.dart';
import '../../../core/utils/resources/resources.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../widgets/custom_containers/card_container.dart';
import '../../../widgets/custom_containers/screen_container.dart';
import '../../cart/entities/enum/order_type_enum.dart';
import '../../cart/presentation/pages/orders_page.dart';
import '../../mobile_service/presentation/pages/booked_mobile_service_page.dart';
import '../../online_booking/presentation/pages/appointments_page.dart';
import '../../quick_service/presentation/booked_quick_service_page.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  _MyOrdersPageState createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int? tabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void didChangeDependencies() {
    tabIndex = int.tryParse(GoRouterState.of(context).extra.toString());
    _tabController.animateTo(tabIndex ?? 0);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.07),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.08,
            width: MediaQuery.sizeOf(context).width,
            child: TabBar(
              dividerColor: Colors.transparent,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Theme.of(context).primaryColor,
              labelColor: Theme.of(context).primaryColor,
              controller: _tabController,
              labelStyle: Theme.of(context).textTheme.headlineSmall,
              tabs: [
                Tab(text: LocaleKeys.Appointments.tr()),
                Tab(text: LocaleKeys.mobileService_mobileService.tr()),
                Tab(text: LocaleKeys.quickService_quickService.tr()),
                Tab(text: LocaleKeys.home_spareParts.tr()),

              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                AppointmentsPage(),
                BookedMobileServicePage(),
                BookedQuickServiceView(),
                OrdersPage(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDetailsWidget extends StatelessWidget {
  final void Function()? onTap;
  final void Function()? onRateTap;
  final String name;
  final String orderId;
  final BasicModel? status;
  final String dealership;
  final String price;
  final String date;
  final String bookDate;
  final OrderType orderType;

  const OrderDetailsWidget(
      {super.key,
      this.onTap,
      this.onRateTap,
      this.name = '',
      required this.orderId,
      required this.status,
      this.dealership = '',
      required this.price,
      this.date = '',
      this.bookDate = '',
        required this.orderType
      });

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: onTap,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name.isNotEmpty?name:LocaleKeys.home_spareParts.tr(), style: Theme.of(context).textTheme.headlineMedium),
                          SizedBox(height: AppSizeH.s2),
                          Directionality(
                            textDirection: ui.TextDirection.ltr,
                            child: Text('#$orderId',
                                style:  Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorManager.darkGrey,fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      if (status != null)
                        ...{
                        if(orderType == OrderType.appointment)
                          AppointmentStatusWidget(status: status),
                        if(orderType == OrderType.sparePart)
                          OrderStatusWidget(status: status),
                        if(orderType == OrderType.mobileService || orderType == OrderType.quickService)
                          MobileServiceStatusWidget(status: status)

                        }
                    ],
                  ),
                  SizedBox(height: AppSizeH.s4),
                  if (dealership.isNotEmpty) ...{
                    Row(
                      children: [
                        Text('${LocaleKeys.onlineBooking_dealership.tr()}: ',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: ColorManager.secondaryColor)),
                        Text(dealership,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: ColorManager.secondaryColor)),
                      ],
                    )
                  },
                  if (price.isNotEmpty) ...{
                    Row(
                      children: [
                        Text('${LocaleKeys.installment_price.tr()}: ',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: ColorManager.secondaryColor)),
                        Text(
                            '${Helper.instance.functionsHelper.insertPeriod(price)} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: ColorManager.secondaryColor)),
                      ],
                    ),
                  },
                  if (date.isNotEmpty)
                    Row(
                      children: [
                        Text('${LocaleKeys.createdDate.tr()}: ',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: ColorManager.secondaryColor)),
                        Text(date,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: ColorManager.secondaryColor)),
                      ],
                    ),
                  if(bookDate.isNotEmpty)
                    Row(
                      children: [
                        Text('${LocaleKeys.mobileService_bookDate.tr()}: ',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: ColorManager.secondaryColor)),
                        Text(bookDate,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: ColorManager.secondaryColor)),
                      ],
                    ),
                ],
              ),
            ),

            Divider(color: ColorManager.whiteGrey, height: AppSizeH.s18),
            Row(mainAxisAlignment:
            onRateTap != null?
            MainAxisAlignment.spaceBetween:MainAxisAlignment.end, children: [
              if (onRateTap != null)
                InkWell(
                    onTap: onRateTap,
                    child: Text(LocaleKeys.survey_rateExperience.tr(),
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headlineSmall
                          ?.copyWith(color: Theme.of(context).primaryColor),
                    )),
              InkWell(
                  onTap: onTap,
                  child: Icon(Icons.arrow_forward),
                  // child: Text(LocaleKeys.cart_showDetails.tr(),
                  //     style: Theme.of(context)
                  //         .primaryTextTheme
                  //         .headlineSmall
                  //         ?.copyWith(color: Theme.of(context).primaryColor))
          ),

            ])
          ]),
    );
  }
}

class AppointmentStatusWidget extends StatelessWidget {
  const AppointmentStatusWidget({
    super.key,
    required this.status,
  });

  final BasicModel? status;

  Color _getStatusColor(int? id) {
    switch (id) {
      case 1: // PENDING
      case 3: // SHIFTED
      case 5: // NOT_PAID
        return Colors.orange; // warning
      case 2: // REJECTED
      case 4: // CANCELED
        return Colors.red; // error
      case 6: // IN_PROGRESS
      case 7: // DONE
        return Colors.green; // success
      default:
        return Colors.grey; // fallback color
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getStatusColor(status?.id);

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.2,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status?.name ?? '',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget({
    super.key,
    required this.status,
  });

  final BasicModel? status;

  Color _getStatusColor(int? id) {
    switch (id) {
      case 1: // NOT_PAID
      case 2: // PENDING
        return Colors.orange;
      case 4: // CANCELED
        return Colors.red;
      case 3: // DONE
        return Colors.green;
      default:
        return Colors.grey; // fallback color
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getStatusColor(status?.id);

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.2,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status?.name ?? '',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


class MobileServiceStatusWidget extends StatelessWidget {
  const MobileServiceStatusWidget({
    super.key,
    required this.status,
  });

  final BasicModel? status;

  Color _getStatusColor(int? id) {
    switch (id) {
      case 1:  // PENDING
        return Colors.orange;
      case 3: // CANCELED
        return Colors.red;
      case 2: // APPROVED
        return Colors.green;
      default:
        return Colors.grey; // fallback color
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getStatusColor(status?.id);

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.2,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status?.name ?? '',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

