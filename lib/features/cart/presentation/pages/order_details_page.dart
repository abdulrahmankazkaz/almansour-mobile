import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/widgets/custom_containers/card_container.dart';
import 'package:mac_mobile/widgets/custom_divider/screen_divider.dart';
import 'package:mac_mobile/widgets/loading_widgets/willpop_scope_loading.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../bloc/order_bloc/order_bloc.dart';
import '../bloc/order_details_bloc/order_details_bloc.dart';
import '../widgets/order_item_widget.dart';
import '../widgets/order_totals_details_widget.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrderStatusView();
  }
}

class OrderStatusView extends StatefulWidget {
  const OrderStatusView({super.key});

  @override
  State<OrderStatusView> createState() => _OrderStatusViewState();
}

class _OrderStatusViewState extends State<OrderStatusView> {
  ScrollController itemsScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    itemsScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text(LocaleKeys.cart_orderDetails.tr()),
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.headlineLarge,
          forceMaterialTransparency: true),
      body: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) => state.maybeWhen(
            cancelLoading: () => LoadingDialog.show(context),
            canceled: () {
              LoadingDialog.hide(context);
              Helper.instance.messageHelper.showToastMessage(
                isSuccessToast: true,
                  context: context,
                  message: LocaleKeys.messages_orderCanceledSuccessfully.tr());
              context.go(RoutesPaths.orderRoute);
              return;
            },
            failed: (errorMessage) {
              LoadingDialog.hide(context);
              Helper.instance.messageHelper.showErrorMessage(context: context, message: errorMessage);
              return;
            },
            orElse: () {
              return;
            }),
        child: ScreenContainer(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.15,
                left: AppSizeW.s20,
                right: AppSizeW.s20,
                bottom: AppSizeH.s40),
            child: BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
                buildWhen: (previous, current) => current.maybeWhen(
                    orElse: () => false, selected: (orderEntity) => true),
                builder: (context, state) {
                  return state.maybeWhen(
                      selected: (orderEntity) => SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CardContainer(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.build_circle,color: Theme.of(context).primaryColor),
                                              SizedBox(width: AppSizeW.s2),
                                              Text(LocaleKeys.cart_orderItems.tr(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium),
                                            ],
                                          ),
                                          SizedBox(height: AppSizeH.s20),
                                          SizedBox(
                                              height: orderEntity.items.length > 3
                                                  ? MediaQuery.sizeOf(context).height *
                                                  0.35
                                                  : null,
                                              child: Scrollbar(
                                                thumbVisibility: true,
                                                controller: itemsScrollController,
                                                child: ListView.separated(
                                                    shrinkWrap: true,
                                                    controller: itemsScrollController,
                                                    padding: EdgeInsets.zero,
                                                    itemBuilder: (context, index) =>
                                                    index < orderEntity.items.length
                                                        ? OrderItemWidget(
                                                      itemTitle: orderEntity
                                                          .items[index]
                                                          .sparePart
                                                          .name!,
                                                      itemPrice: orderEntity
                                                          .items[index]
                                                          .sparePart
                                                          .price
                                                          ?.toInt()
                                                          .toString() ??
                                                          '',
                                                      quantity:
                                                      '${orderEntity.items[index].quantity}',
                                                    )
                                                        : const SizedBox.shrink(),
                                                    separatorBuilder: (context, index) {
                                                      if(index != orderEntity.items.length-1) {
                                                        return Divider(color: ColorManager.whiteGrey, height: AppSizeH.s18);
                                                      }
                                                      else{
                                                        return SizedBox.shrink();
                                                      }
                                                    },
                                                    itemCount:
                                                    orderEntity.items.length + 1),
                                              )),
                                        ],
                                      ),
                                    ),

                                SizedBox(height: AppSizeH.s20),
                                OrderSummary( orderDealership: orderEntity.dealership??'',
                                  paymentType: orderEntity.paymentMethod?.name ?? '',
                                    orderStatus: orderEntity.status.name,
                                  orderType: orderEntity.type.name),
                                SizedBox(height: AppSizeH.s20),
                                OrderTotalsDetailsWidget(

                                  orderDetailsTotal: orderEntity.totals,
                                ),
                                SizedBox(height: AppSizeH.s30),
                                if (orderEntity.status.id == 1) //status id 1 means not paid
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          child: ElevatedButton(
                                              style: Theme.of(context)
                                                  .errorElevatedButtonTheme,
                                              onPressed: () {
                                                context.read<OrderBloc>().add(
                                                    OrderEvent.cancelOrder(
                                                        orderEntity.id));
                                              },
                                              child:
                                                  Text(LocaleKeys.cancel.tr())),
                                        ),
                                        SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                context
                                                    .read<OrderBloc>()
                                                    .setOrderItems(
                                                        orderEntity.items);
                                                context
                                                    .read<OrderBloc>()
                                                    .orderId = orderEntity.id;
                                                context.push(
                                                    RoutesPaths.checkout,
                                                    extra: true);
                                              },
                                              child: Text(LocaleKeys
                                                  .onlineBooking_pay
                                                  .tr())),
                                        )
                                      ]),
                              ])),
                      orElse: () => const SizedBox.shrink());
                })),
      ),

    );
  }
}
