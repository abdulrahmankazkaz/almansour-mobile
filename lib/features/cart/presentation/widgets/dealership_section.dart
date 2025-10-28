import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/features/online_booking/entities/dealership/dealership.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/dealership_bloc/dealership_bloc.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../bloc/order_bloc/order_bloc.dart';

class DealershipSection extends StatefulWidget {
  const DealershipSection({super.key});

  @override
  State<DealershipSection> createState() => _DealershipSectionState();
}

class _DealershipSectionState extends State<DealershipSection> {
  Dealership? _selectedValue;


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DealershipBloc, DealershipState>(
        listener: (context, state) =>
            state.mapOrNull(loaded: (value) {
              context
                  .read<OrderBloc>()
                  .setSelectedDealershipId(value.dealerships[0].id);
              _selectedValue = value.dealerships[0];
              context.read<OrderBloc>().add(const OrderEvent.getOrderDetails());
              return;
            }),
        buildWhen: (previous, current) => current.maybeWhen(
            loading: () => true,
            loaded: (paymentMethods) => true,
            orElse: () => false),
        builder: (context, state) {
          return BesideDropDown<Dealership>(
            // width: MediaQuery.sizeOf(context).width,
            label: LocaleKeys.dealership_dealerships.tr(),
            value: _selectedValue,
            items: state.maybeWhen(
                loaded: (dealerships) => dealerships,
                orElse: () => []),
            stringConverter: (value) {
              return value.name??'';
            },
            onChanged: (value) async {
              setState(() {
                _selectedValue = value;
                context
                    .read<OrderBloc>()
                    .setSelectedDealershipId(_selectedValue?.id ?? -1);
                context
                    .read<OrderBloc>()
                    .add(const OrderEvent.getOrderDetails());
              });
            },
          );
        });
  }
}
