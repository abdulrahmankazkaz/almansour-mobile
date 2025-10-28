import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/cart/entities/enum/order_type_enum.dart';
import 'package:mac_mobile/features/cart/presentation/bloc/order_bloc/order_bloc.dart';
import 'package:mac_mobile/features/survey/entities/survey_type_parameters.dart';
import 'package:mac_mobile/widgets/loading_widgets/small_circular_progress_indicator.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/empty_widgets/empty_lottie_widget.dart';
import '../../../home/widgets/my_orders_page.dart';
import '../bloc/order_details_bloc/order_details_bloc.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrdersView();
  }
}

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    context.read<OrderBloc>().add(const OrderEvent.getOrders(true));
    _scrollController = ScrollController()
      ..addListener(() {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        if (maxScroll - currentScroll < 15) {
          context.read<OrderBloc>().add(const OrderEvent.getOrders(false));
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) => state.maybeWhen(
            failed: (errorMessage) => Helper.instance.messageHelper
                .showErrorMessage(context: context, message: errorMessage),
            orElse: () {
              return null;
            }),
        buildWhen: (prev, curr) => curr.maybeWhen(
            loading: () => true, loaded: (_, __) => true, orElse: () => false),
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Center(child: SmallCircularIndicator()),
              loaded: (orders, hasReachMax) {
                if (orders.isEmpty) {
                  return EmptyLottieWidget(
                    title: LocaleKeys.emptyTitle.tr(),
                    description: LocaleKeys.emptyDescription.tr(),
                    lottie: Assets.lottieEmpty,
                  );
                } else {
                  return RefreshIndicator(
                    backgroundColor: Theme.of(context).cardColor,
                    onRefresh: () async => context
                        .read<OrderBloc>()
                        .add(const OrderEvent.getOrders(true)),
                    child: ListView.separated(
                        physics: const AlwaysScrollableScrollPhysics(),
                        controller: _scrollController,
                        padding: EdgeInsets.all(AppSizeW.s20),
                        itemCount: orders.length + 1,
                        itemBuilder: (context, index) {
                          if (index < orders.length) {
                            return OrderDetailsWidget(
                                status: orders[index].status,
                                orderType: OrderType.sparePart,
                                dealership: orders[index].dealership ?? '',
                                price: orders[index]
                                    .totals
                                    .total
                                    .toInt()
                                    .toString(),
                                orderId: orders[index].id.toString(),
                                onRateTap: orders[index].status.id == 3 &&
                                        !orders[index].isRated
                                    ? () {
                                        SurveyTypeParameters param =
                                            SurveyTypeParameters(
                                                typeId: 3,
                                                modelId: orders[index].id);
                                        context
                                            .push(RoutesPaths.survey,
                                                extra: param.toJson())
                                            .then((value) => context
                                                .read<OrderBloc>()
                                                .add(const OrderEvent.getOrders(
                                                    true)));
                                      }
                                    : null,
                                date: Helper.instance.dateHelper
                                        .formatDateJustDate(
                                            orders[index].date) ??
                                    '',
                                onTap: () {
                                  context.read<OrderDetailsBloc>().add(
                                      OrderDetailsEvent.selectOrder(
                                          orders[index]));
                                  context.push(RoutesPaths.orderDetailsPage);
                                });
                          } else if (index >= orders.length && !hasReachMax) {
                            return Container(
                                margin: EdgeInsets.all(AppSizeH.s4),
                                width: AppSizeW.s32,
                                height: AppSizeW.s32,
                                child: const Center(
                                    child: CircularProgressIndicator()));
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: AppSizeH.s20)),
                  );
                }
              },
              failed: (failedMessage) => const SizedBox.shrink(),
              orElse: () => const SizedBox.shrink());
        });
  }
}
