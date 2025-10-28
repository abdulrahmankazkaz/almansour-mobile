import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';

class OrderItemWidget extends StatelessWidget {
  final String imageUrl;
  final String itemTitle;
  final String quantity;
  final String itemPrice;

  const OrderItemWidget(
      {super.key,
      this.imageUrl = '',
      required this.itemTitle,
      required this.quantity,
      required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.8,
                child: Text(itemTitle,
                    style: Theme.of(context).textTheme.headlineSmall)),

          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  child: Text('x$quantity',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w600,color: ColorManager.grayFontColor))),
              Text(
                  '${Helper.instance.functionsHelper.insertPeriod(itemPrice)} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .headlineSmall),
            ],
          ),
        ]);
  }
}
