import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/cart/presentation/widgets/dealership_section.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/dealership_bloc/dealership_bloc.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../../widgets/text_fields/custom_text_field.dart';
import '../../../main/presentation/bloc/main_bloc/main_bloc.dart';
import '../bloc/cart_cubit/cart_cubit.dart';
import '../bloc/order_bloc/order_bloc.dart';
import '../bloc/order_details_bloc/order_details_bloc.dart';
import '../widgets/delivery_type_section.dart';
import '../widgets/order_details_section.dart';
import '../widgets/payment_type_section.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => DealershipBloc(),
        child: const CheckoutView());
  }
}

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  bool isPayOrder = false;

  @override
  void initState() {
    context.read<OrderBloc>().add(const OrderEvent.started());
    context.read<MainBloc>().add(const MainEvent.getPaymentMethods());
    context.read<DealershipBloc>().add(const DealershipEvent.getDealership());
    context
        .read<OrderDetailsBloc>()
        .add(const OrderDetailsEvent.getEPaymentTerms());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isPayOrder = GoRouterState.of(context).extra as bool;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            title: Text(LocaleKeys.cart_checkOut.tr()),
            forceMaterialTransparency: true,
            centerTitle: true,
            titleTextStyle: Theme.of(context).textTheme.headlineLarge),
        body: BlocListener<OrderBloc, OrderState>(
          listener: (context, state) {
            state.maybeWhen(
              checkoutLoading: () => LoadingDialog.show(context),
              failed: (errorMessage) {
                LoadingDialog.hide(context);
                Helper.instance.messageHelper
                    .showErrorMessage(context: context, message: errorMessage);
              },
              invalidParameters: (validationMessage) =>
                  Helper.instance.messageHelper.showToastMessage(
                      context: context, message: validationMessage),
              orderSucceed: (orderSuccess) async {
                LoadingDialog.hide(context);
                context.read<CartCubit>().clearCart();
                if (orderSuccess.url.isEmpty) {
                  context.go(RoutesPaths.orderSuccess,extra: 3);
                } else {
                  context.go(RoutesPaths.homeRoute);
                  await Helper.instance.routerHelper.openLink(orderSuccess.url);
                }
              },
              orElse: () {},
            );
          },
          child: ScreenContainer(
              padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.12,
                  right: AppSizeW.s20,
                  left: AppSizeW.s20),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s20)),
                  const SliverToBoxAdapter(child: PaymentTypeSection()),
                  SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s20)),
                  const SliverToBoxAdapter(child: DeliverTypeSection()),
                  SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s20)),
                  const SliverToBoxAdapter(child: DealershipSection()),
                  SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s20)),
                  SliverToBoxAdapter(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(LocaleKeys.onlineBooking_note.tr(),
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headlineMedium),
                      SizedBox(height: AppSizeH.s10),
                      CustomTextField(
                        contentPadding: EdgeInsets.all(AppSizeW.s24),
                        textInputType: TextInputType.multiline,
                        hint: LocaleKeys.onlineBooking_writeHere,
                        isTextArea: true,
                      ),
                    ],
                  )),
                  SliverToBoxAdapter(child: SizedBox(height: AppSizeH.s30)),
                  const SliverToBoxAdapter(child: OrderDetailsSection()),
                  SliverToBoxAdapter(
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
                                      BorderRadius.circular(AppSizeR.s50),
                                ),
                              ),
                            ),
                        onPressed: () {
                          if (context
                                  .read<OrderBloc>()
                                  .selectedPaymentMethodId ==
                              2) {
                            //payment method id 2 is e-payment
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return BlocBuilder<OrderDetailsBloc,
                                          OrderDetailsState>(
                                      builder: (context, state) =>
                                          state.maybeWhen(
                                              termsLoaded: (terms) =>
                                                  PaymentTermsDialog(
                                                    terms: terms,
                                                    onPressed: () => context
                                                        .read<OrderBloc>()
                                                        .add(OrderEvent
                                                            .sendOrder(
                                                                isPayOrder)),
                                                  ),
                                              loading: () =>
                                                  const LoadingDialog(),
                                              orElse: () => const SizedBox()));
                                });
                          } else {
                            // payment method is cash
                            context
                                .read<OrderBloc>()
                                .add(OrderEvent.sendOrder(isPayOrder));
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Spacer(),
                            Text(LocaleKeys.cart_sendOrder.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: ColorManager.surface)),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.all(AppSizeW.s6),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColorDark,
                                  shape: BoxShape.circle),
                              child: const Icon(Icons.arrow_forward,
                                  color: ColorManager.surface),
                            )
                          ],
                        )),
                  )
                ],
              )),
        ));
  }
}

class PaymentTermsDialog extends StatelessWidget {
  final void Function() onPressed;
  final List<String> terms;

  const PaymentTermsDialog({
    required this.onPressed,
    required this.terms,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height * 0.12,
          horizontal: AppSizeW.s50),
      child: Padding(
        padding: EdgeInsets.all(AppSizeW.s20),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(LocaleKeys.cart_paymentTerms.tr(),
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
                SizedBox(height: AppSizeH.s10),
                Text(LocaleKeys.cart_paymentTermsText.tr()),
                SizedBox(height: AppSizeH.s10),
                ...List.generate(
                    terms.length,
                    (index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: AppSizeH.s10),
                              height: AppSizeW.s4,
                              width: AppSizeW.s4,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorManager.secondaryColor),
                            ),
                            SizedBox(width: AppSizeW.s8),
                            SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.6,
                                child: Text(terms[index], softWrap: true)),
                          ],
                        )),
                const Spacer(),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        context.pop();
                        onPressed();
                      },
                      child: Text(LocaleKeys.cart_completePayment.tr())),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
