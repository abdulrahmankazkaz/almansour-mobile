import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mac_mobile/features/cart/presentation/bloc/order_bloc/order_bloc.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import 'order_details_skeleton_widget.dart';

class OrderDetailsSection extends StatefulWidget {
  const OrderDetailsSection({
    super.key,
  });

  @override
  State<OrderDetailsSection> createState() => _OrderDetailsSectionState();
}

class _OrderDetailsSectionState extends State<OrderDetailsSection> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
        buildWhen: (previous, current) => current.maybeWhen(
            detailsLoaded: (orderDetails) => true, detailsLoading: () => true,orElse: () => false),
        builder: (context, state) {
          return state.maybeWhen(
              detailsLoading: () => const OrderDetailsSkeletonLoading(),
              detailsLoaded: (details) => Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(LocaleKeys.cart_subtotal.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontSize: 17.sp)),
                          const Spacer(),
                          Text(
                              '${Helper.instance.functionsHelper.insertPeriod(details.totals.subtotal.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontSize: 17.sp)),
                        ],
                      ),
                      state.maybeWhen(
                          detailsLoaded: (orderDetails) {
                            if (orderDetails.totals.delivery != 0) {
                              return Row(
                                children: [
                                  Text(LocaleKeys.cart_delivery.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontSize: 17.sp)),
                                  const Spacer(),
                                  Text(
                                      '${Helper.instance.functionsHelper.insertPeriod(orderDetails.totals.delivery.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontSize: 17.sp)),
                                ],
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                          orElse: () => const SizedBox.shrink()),
                      if (details.totals.tax != 0)
                      Row(
                        children: [
                          Text(LocaleKeys.cart_tax.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontSize: 17.sp)),
                          const Spacer(),
                          Text(
                              '${state.whenOrNull(detailsLoaded: (orderDetails) => orderDetails.totals.tax.toStringAsFixed(2))} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontSize: 17.sp)),
                        ],
                      ),
                      state.maybeWhen(
                          detailsLoaded: (orderDetails) {
                            if (orderDetails.totals.discount != 0) {
                              return Row(
                                children: [
                                  Text(LocaleKeys.cart_discount.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontSize: 17.sp)),
                                  const Spacer(),
                                  Text(
                                      '${Helper.instance.functionsHelper.insertPeriod(orderDetails.totals.discount.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontSize: 17.sp)),
                                ],
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                          orElse: () => const SizedBox.shrink()),
                      SizedBox(height: AppSizeH.s20),
                      const CustomDivider(),
                      SizedBox(height: AppSizeH.s10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(LocaleKeys.cart_totalAmount.tr(),
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            Text(
                                '${state.whenOrNull(detailsLoaded: (orderDetails) => Helper.instance.functionsHelper.insertPeriod(orderDetails.totals.total.toInt().toString()))} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                          ]),
                      SizedBox(height: AppSizeH.s30),
                    ],
                  ),
              orElse: () => const SizedBox.shrink(),
          );
        });
  }
}



class OrderDetailWidget extends StatelessWidget {
  const OrderDetailWidget({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label.tr(),
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontSize: 17.sp)),
        const Spacer(),
        Text('${0.0} ${getIt<AppPreferences>().userPreferences.getCurrency}',
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontSize: 17.sp))
      ],
    );
  }
}
