import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../cart/entities/cart_item/cart_item.dart';
import '../../../cart/presentation/bloc/cart_cubit/cart_cubit.dart';
import '../../entities/spare_part.dart';
import 'counter_widget.dart';

class SparePartItemWidget extends StatefulWidget {
  const SparePartItemWidget({
    super.key,
    required this.sparePart});

  final SparePart sparePart;


  @override
  State<SparePartItemWidget> createState() => _SparePartItemWidgetState();
}

class _SparePartItemWidgetState extends State<SparePartItemWidget> {
  late bool isCartShown;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    isCartShown = !context.watch<CartCubit>().isItemInCart(widget.sparePart.id!);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: AppSizeH.s10),
        padding: EdgeInsets.fromLTRB(
            AppSizeW.s20, AppSizeW.s20, AppSizeW.s10, AppSizeW.s10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s15),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 3)
          ],
          color: Theme.of(context).cardColor,
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Text(widget.sparePart.name ?? '',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                    SizedBox(height: AppSizeH.s10),
                    Text(
                        '${Helper.instance.functionsHelper.insertPeriod(widget.sparePart.price?.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyMedium
                            ?.copyWith(
                                color: ColorManager.secondaryColor,
                                fontWeight: FontWeight.w500))
                  ]),
              AnimatedSwitcher(
                  duration: Durations.short2,
                  child: isCartShown
                      ? InkWell(
                      onTap: () async {
                        setState(() {
                          isCartShown = false;
                        });
                        await context.read<CartCubit>().addItem(CartItem(
                            sparePart: widget.sparePart, quantity: 1));
                      },
                          child: SvgPicture.asset(Assets.iconsAddCart))
                      : InkWell(
                          onTap: () => setState(() {
                            isCartShown = true;
                              }),
                          child: CounterWidget(
                              initialValue: context.watch<CartCubit>().getQuantityById(widget.sparePart.id!)??1,
                              itemId: widget.sparePart.id!,
                              onChanged: (p0) async {
                                if (p0 == 0) {
                                  setState(() {
                                    isCartShown = true;
                                  });
                                  await context
                                      .read<CartCubit>()
                                      .removeItem(widget.sparePart.id!);
                                }
                              })))
            ]));
  }
}
