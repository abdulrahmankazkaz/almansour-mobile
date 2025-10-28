import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/features/main/presentation/bloc/main_bloc/main_bloc.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../bloc/order_bloc/order_bloc.dart';

class PaymentTypeSection extends StatefulWidget {
  const PaymentTypeSection({
    super.key,
  });

  @override
  State<PaymentTypeSection> createState() => _PaymentTypeSectionState();
}

class _PaymentTypeSectionState extends State<PaymentTypeSection> {
  BasicModel? _selectedValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
        listener: (context, state) =>
            state.mapOrNull(paymentMethodsLoaded: (value) {
              context
                  .read<OrderBloc>()
                  .setSelectedPaymentMethod(value.paymentMethods[0].id);
              _selectedValue = value.paymentMethods[0];
              context.read<OrderBloc>().add(const OrderEvent.getOrderDetails());
              return;
            }),
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
                paymentMethodsLoaded: (paymentMethods) => paymentMethods,
                orElse: () => []),
            stringConverter: (value) {
              return value.name;
            },
            onChanged: (value) async {
              setState(() {
                _selectedValue = value;
                context
                    .read<OrderBloc>()
                    .setSelectedPaymentMethod(_selectedValue?.id ?? -1);
                context
                    .read<OrderBloc>()
                    .add(const OrderEvent.getOrderDetails());
              });
            },
          );
        });
  }
}
