import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/features/main/presentation/bloc/main_bloc/main_bloc.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../bloc/order_bloc/order_bloc.dart';

class DeliverTypeSection extends StatefulWidget {
  const DeliverTypeSection({
    super.key,
  });

  @override
  State<DeliverTypeSection> createState() => _DeliverTypeSectionState();
}

class _DeliverTypeSectionState extends State<DeliverTypeSection> {
  BasicModel? _selectedValue = BasicModel(id:2,name: LocaleKeys.pickup.tr());

  @override
  void initState() {
    context.read<MainBloc>().add(const MainEvent.getOrderType());
    context.read<OrderBloc>().setSelectedOrderType(2);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: BlocBuilder<MainBloc, MainState>(
              buildWhen: (previous, current) => current.maybeWhen(loading: () => true,orderTypeLoaded: (orderTypes) => true,orElse: () => false),
              builder: (context, state) {
            return BesideDropDown<BasicModel>(
              // width: MediaQuery.sizeOf(context).width,
              label: LocaleKeys.cart_deliverType.tr(),
              value: _selectedValue,
              items: state.maybeWhen(
                  orderTypeLoaded: (orderTypes) => orderTypes,
                  orElse: () => []),
              stringConverter: (value) {
                return value.name;
              },
              onChanged: (value) async {
                _selectedValue = value;
                context
                    .read<OrderBloc>()
                    .setSelectedOrderType(_selectedValue?.id ?? -1);
                context
                    .read<OrderBloc>()
                    .add(const OrderEvent.getOrderDetails());
                setState(() {});
              },
            );
          }))
    ]);
  }
}
