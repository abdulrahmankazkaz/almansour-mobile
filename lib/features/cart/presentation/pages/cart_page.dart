import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../bloc/cart_cubit/cart_cubit.dart';
import '../bloc/order_bloc/order_bloc.dart';
import '../widgets/cart_item_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CartView();
  }
}

class CartView extends StatelessWidget {
  const CartView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(LocaleKeys.cart_cart.tr()),
        ),
        body: ScreenContainer(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.18),
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return state.maybeWhen(
                    loaded: (items) {
                      return items.isNotEmpty?CustomScrollView(slivers: [
                        SliverToBoxAdapter(
                          child: ListView.builder(
                              key: UniqueKey(),
                              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: items.length,
                              itemBuilder: (context, index) => Dismissible(
                                onDismissed: (direction) => context
                                    .read<CartCubit>()
                                    .removeItem(
                                    items[index].sparePart.id!),
                                direction: DismissDirection.endToStart,
                                key: ValueKey<int>(index),
                                background: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.all(AppSizeW.s10),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Theme.of(context)
                                                .primaryColor),
                                        child: const Icon(
                                            Icons.delete_outline,
                                            color: ColorManager.surface))
                                  ],
                                ),
                                child: CartItemWidget(
                                  itemName: items[index].sparePart.name!,
                                  itemId: items[index].sparePart.id!,
                                  itemPrice:
                                  items[index].sparePart.price!,
                                  itemQuantity: items[index].quantity,
                                ),
                              )),
                        ),
                        SliverToBoxAdapter(
                            child: SizedBox(height: AppSizeH.s40)),
                        SliverToBoxAdapter(
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s20,
                                    vertical: AppSizeH.s40),
                                child: ElevatedButton(
                                    style: Theme.of(context)
                                        .primaryElevatedButtonTheme
                                        .copyWith(
                                      padding: WidgetStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s4,
                                              vertical: AppSizeH.s6)),
                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              AppSizeR.s50),
                                        ),
                                      ),
                                    ),
                                    onPressed: ()  {
                                      context.read<OrderBloc>().setOrderItems(items);
                                      context.push(RoutesPaths.checkout,extra: false);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        const Spacer(),
                                        Text(LocaleKeys.cart_checkOut.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge?.copyWith(color: ColorManager.surface)),
                                        const Spacer(),
                                        Container(
                                          padding:
                                          EdgeInsets.all(AppSizeW.s6),
                                          decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColorDark,
                                              shape: BoxShape.circle),
                                          child: const Icon(
                                              Icons.arrow_forward,
                                              color: ColorManager.surface),
                                        )
                                      ],
                                    )))),
                      ]): Center(child: Text(LocaleKeys.cart_emptyCart.tr()));
                    },
                    orElse: () =>
                        Center(child: Text(LocaleKeys.cart_emptyCart.tr())));
              },
            )));
  }
}
