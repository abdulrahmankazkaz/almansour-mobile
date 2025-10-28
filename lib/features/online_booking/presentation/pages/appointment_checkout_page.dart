import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/main/presentation/bloc/main_bloc/main_bloc.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../cart/presentation/bloc/order_details_bloc/order_details_bloc.dart';
import '../../../cart/presentation/pages/check_out_page.dart';
import '../../../cart/presentation/widgets/order_details_skeleton_widget.dart';

class AppointmentCheckoutPage extends StatelessWidget {
  const AppointmentCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppointmentCheckoutView();
  }
}

class AppointmentCheckoutView extends StatefulWidget {
  const AppointmentCheckoutView({super.key});

  @override
  State<AppointmentCheckoutView> createState() =>
      _AppointmentCheckoutViewState();
}

class _AppointmentCheckoutViewState extends State<AppointmentCheckoutView> {
  BasicModel? _selectedValue;

  @override
  void initState() {
    context.read<AppointmentCheckoutBloc>().paymentMethodId = -1;
    context.read<MainBloc>().add(const MainEvent.getPaymentMethods());
    context
        .read<OrderDetailsBloc>()
        .add(const OrderDetailsEvent.getEPaymentTerms());

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(LocaleKeys.cart_checkOut.tr())),
        body: MultiBlocListener(
          listeners: [
            BlocListener<MainBloc, MainState>(
              listener: (context, state) =>
                  state.mapOrNull(paymentMethodsLoaded: (value) {
                _selectedValue = value.paymentMethods[0];
                context.read<AppointmentCheckoutBloc>().add(
                    AppointmentCheckoutEvent.getPaymentDetails(
                        value.paymentMethods[0].id));
                return;
              }),
            ),
            BlocListener<AppointmentCheckoutBloc, AppointmentCheckoutState>(
                listener: (context, state) {
              state.maybeWhen(
                loading: () => LoadingDialog.show(context),
                failed: (errorMessage) {
                  LoadingDialog.hide(context);
                  Helper.instance.messageHelper.showErrorMessage(
                      context: context, message: errorMessage);
                },
                invalidParameters: (validationMessage) =>
                    Helper.instance.messageHelper.showToastMessage(
                        context: context, message: validationMessage),
                success: (orderSuccess) async {
                  LoadingDialog.hide(context);
                  if (orderSuccess.url == null || orderSuccess.url!.isEmpty) {
                    context.go(RoutesPaths.orderSuccess,extra: 0);
                  } else {
                    context.go(RoutesPaths.homeRoute);
                    await Helper.instance.routerHelper
                        .openLink(orderSuccess.url);
                  }
                },
                orElse: () {},
              );
            })
          ],
          child: ScreenContainer(
              padding: EdgeInsets.all(AppSizeW.s20),
              child: Column(children: [
                BlocBuilder<MainBloc, MainState>(
                    buildWhen: (previous, current) => current.maybeWhen(
                        loading: () => true,
                        paymentMethodsLoaded: (paymentMethods) => true,
                        orElse: () => false),
                    builder: (context, state) {
                      return BesideDropDown<BasicModel>(
                        // width: MediaQuery.sizeOf(context).width,
                        label: LocaleKeys.cart_paymentType.tr(),
                        value: _selectedValue,
                        items: state.maybeWhen(
                            paymentMethodsLoaded: (paymentMethods) =>
                                paymentMethods,
                            orElse: () => []),
                        stringConverter: (value) {
                          return value.name;
                        },
                        onChanged: (value) async {
                          setState(() {
                            _selectedValue = value;
                          });
                          if(_selectedValue != null) {
                            context.read<AppointmentCheckoutBloc>().add(
                              AppointmentCheckoutEvent.getPaymentDetails(
                                  _selectedValue!.id));
                          }
                        },
                      );
                    }),
                SizedBox(height: AppSizeH.s20),
                BlocBuilder<AppointmentCheckoutBloc, AppointmentCheckoutState>(
                    buildWhen: (previous, current) => current.maybeWhen(
                        detailsLoading: () => true,
                        detailsLoaded: (orderDetails) => true,
                        orElse: () => false),
                    builder: (context, state) {
                      return state.maybeWhen(
                        detailsLoading: () =>
                            const OrderDetailsSkeletonLoading(),
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
                                      '${state.whenOrNull(detailsLoaded: (orderDetails) => Helper.instance.functionsHelper.insertPeriod(orderDetails.totals.subtotal.toInt().toString()))} ${getIt<AppPreferences>().userPreferences.getCurrency}',
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
                              if (details.totals.discount != 0)
                                Row(
                                  children: [
                                    Text(
                                        LocaleKeys.cart_discount.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(fontSize: 17.sp)),
                                    const Spacer(),
                                    Text(
                                        '${Helper.instance.functionsHelper.insertPeriod(details.totals.discount.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(fontSize: 17.sp)),
                                  ],
                                ),
                              SizedBox(height: AppSizeH.s20),
                              const CustomDivider(),
                              SizedBox(height: AppSizeH.s10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(LocaleKeys.cart_totalAmount.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium),
                                    Text(
                                        '${state.whenOrNull(detailsLoaded: (orderDetails) => Helper.instance.functionsHelper.insertPeriod(orderDetails.totals.total.toInt().toString()))} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium),
                                  ]),
                              SizedBox(height: AppSizeH.s30),
                            ]),
                        orElse: () => const SizedBox.shrink(),
                      );
                    }),
                const Spacer(),
                ElevatedButton(
                    style: Theme.of(context)
                        .primaryElevatedButtonTheme
                        .copyWith(
                            padding: WidgetStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s4,
                                    vertical: AppSizeH.s6)),
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSizeR.s50),
                            ))),
                    onPressed: () {
                      // payment method is e-payment
                      if (_selectedValue?.id == 2) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return BlocBuilder<OrderDetailsBloc,
                                      OrderDetailsState>(
                                  builder: (context, state) => state.maybeWhen(
                                      termsLoaded: (terms) =>
                                          PaymentTermsDialog(
                                              terms: terms,
                                              onPressed: () {
                                                if (_selectedValue != null) {
                                                  context
                                                      .read<
                                                          AppointmentCheckoutBloc>()
                                                      .add(AppointmentCheckoutEvent
                                                          .checkout(
                                                              _selectedValue!
                                                                  .id));
                                                }
                                              }),
                                      loading: () => const LoadingDialog(),
                                      orElse: () => const SizedBox()));
                            });
                      }
                      //payment method is cash
                      else {
                        if (_selectedValue != null) {
                          context.read<AppointmentCheckoutBloc>().add(
                              AppointmentCheckoutEvent.checkout(
                                  _selectedValue!.id));
                        }
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
                        ]))
              ])),
        ));
  }
}
