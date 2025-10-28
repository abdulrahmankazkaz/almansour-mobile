import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/core/utils/helpers/helper.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../spare_parts/presentation/widgets/counter_widget.dart';
import '../bloc/cart_cubit/cart_cubit.dart';

class CartItemWidget extends StatelessWidget {
  final int itemId;
  final int itemQuantity;
  final double itemPrice;
  final String itemName;
  final bool canChangeQuantity;

  const CartItemWidget(
      {super.key,
      required this.itemId,
      required this.itemQuantity,
      required this.itemPrice,
      required this.itemName,
      this.canChangeQuantity = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppSizeH.s8),
      padding: EdgeInsets.symmetric(
          vertical: AppSizeW.s12, horizontal: AppSizeW.s20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s15),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 3)
          ],
          color: Theme.of(context).cardColor),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.sizeOf(context).width *0.4,
                  child: Text(itemName, style: Theme.of(context).textTheme.headlineMedium)),
              SizedBox(height: AppSizeH.s10),
              Text('${Helper.instance.functionsHelper.insertPeriod(itemPrice.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .headlineSmall
                      ?.copyWith(color: ColorManager.secondaryColor))
            ],
          ),
          const Spacer(),
          if (canChangeQuantity)
            CounterWidget(
              itemId: itemId,
              initialValue: itemQuantity,
              onChanged: (value) async {
                if (value == 0) {
                  await context.read<CartCubit>().removeItem(itemId);
                }
              },
            )
        ],
      ),
    );
  }
}
