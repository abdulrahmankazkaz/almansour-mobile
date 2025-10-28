import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/card_container.dart';
import '../../entities/order_details/order_details_total.dart';

class OrderTotalsDetailsWidget extends StatelessWidget {
  final OrderDetailsTotal orderDetailsTotal;

  const OrderTotalsDetailsWidget({super.key, required this.orderDetailsTotal});

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(LocaleKeys.cart_subtotal.tr(),
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: ColorManager.grayFontColor)),
            Text(
                '${Helper.instance.functionsHelper.insertPeriod(orderDetailsTotal.subtotal.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: ColorManager.grayFontColor)),
          ],
        ),
        SizedBox(height: AppSizeH.s10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                LocaleKeys.cart_discount.tr(),
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: ColorManager.grayFontColor)),
            Text(
                '${Helper.instance.functionsHelper.insertPeriod(orderDetailsTotal.discount.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: ColorManager.grayFontColor)),
          ],
        ),
        if (orderDetailsTotal.delivery != 0) ...{
          SizedBox(height: AppSizeH.s10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.cart_delivery.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorManager.grayFontColor)),
              Text(
                  '${Helper.instance.functionsHelper.insertPeriod(orderDetailsTotal.delivery.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorManager.grayFontColor)),
            ],
          ),
        },
        if (orderDetailsTotal.tax != 0) ...{
          SizedBox(height: AppSizeH.s10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.cart_tax.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorManager.grayFontColor)),
              Text(
                  '${Helper.instance.functionsHelper.insertPeriod(orderDetailsTotal.tax.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorManager.grayFontColor)),
            ],
          ),
        },
        SizedBox(height: AppSizeH.s10),
        Divider(color: ColorManager.whiteGrey, height: AppSizeH.s18),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(LocaleKeys.cart_totalAmount.tr(),
              style: Theme.of(context).textTheme.headlineMedium),
          Row(
            children: [
              Text('${Helper.instance.functionsHelper.insertPeriod(orderDetailsTotal.total.toInt().toString())}',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800
              )

              ),
              Text(
                  ' ${getIt<AppPreferences>().userPreferences.getCurrency}',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium),
            ],
          ),
        ])
      ]),
    );
  }
}

class OrderSummary extends StatelessWidget {
  final String orderDealership;
  final String orderType;
  final String orderStatus;
  final String paymentType;

  const OrderSummary(
      {super.key,
      this.orderDealership = '',
      this.orderType = '',
      this.orderStatus = '',
      required this.paymentType});

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.file_copy_outlined,
                  color: Theme.of(context).primaryColor),
              SizedBox(width: AppSizeW.s2),
              Text(LocaleKeys.cart_orderSummary.tr(),
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          if (orderDealership.isNotEmpty) ...{
            SizedBox(height: AppSizeH.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.onlineBooking_dealership.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: ColorManager.grayFontColor)),
                Text(orderDealership,
                    style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          },
          if (orderStatus.isNotEmpty) ...{
            SizedBox(height: AppSizeH.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.onlineBooking_status.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: ColorManager.grayFontColor)),
                Text(orderStatus,
                    style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          },
          if (paymentType.isNotEmpty) ...{
            SizedBox(height: AppSizeH.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.cart_paymentType.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: ColorManager.grayFontColor)),
                Text(paymentType,
                    style: Theme.of(context).textTheme.headlineMedium),
              ],
            )
          },
          if (orderType.isNotEmpty) ...{
            SizedBox(height: AppSizeH.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.cart_orderType.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: ColorManager.grayFontColor)),
                Text(orderType,
                    style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          },
        ],
      ),
    );
  }
}
