import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../../widgets/loading_widgets/shimmer_widget.dart';

class OrderDetailsSkeletonLoading extends StatelessWidget {
  const OrderDetailsSkeletonLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
            2,
                (index) => Padding(
              padding: EdgeInsets.symmetric(vertical: AppSizeH.s8),
              child: Row(
                children: [
                  ShimmerWidget(
                      child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: AppSizeH.s20,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(AppSizeR.s15),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF324756),
                                  Color(0xFF0A2536)
                                ]),
                          ))),
                  const Spacer(),
                  ShimmerWidget(
                    child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.15,
                        height: AppSizeH.s20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSizeR.s15),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF324756),
                                Color(0xFF0A2536)
                              ]),
                        )),
                  )
                ],
              ),
            )),
        const ShimmerWidget(child: CustomDivider()),
        SizedBox(height: AppSizeH.s10),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ShimmerWidget(
            child: Text(LocaleKeys.cart_totalAmount.tr(),
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          ShimmerWidget(
            child: Container(
                width: MediaQuery.sizeOf(context).width * 0.15,
                height: AppSizeH.s20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizeR.s15),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF324756), Color(0xFF0A2536)]),
                )),
          )
        ]),
        SizedBox(height: AppSizeH.s30),
      ],
    );
  }
}