import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/features/cart/entities/order/order_entity.dart';
import 'package:mac_mobile/features/profile/entities/no_params.dart';

import '../../../domain/use_cases/get_payment_terms.dart';

part 'order_details_bloc.freezed.dart';
part 'order_details_event.dart';
part 'order_details_state.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final GetPaymentTerms _getEPaymentTerms = getIt<GetPaymentTerms>();

  OrderDetailsBloc() : super(const OrderDetailsState.initial()) {
    on<OrderDetailsEvent>((event, emit) async {
      await event.map(
          started: (value) async {},
          selectOrder: (value) async => _onSelectOrder(emit, value),
          getEPaymentTerms: (value) async =>
              await _onGetEPaymentTerms(emit, value));
    });
  }

  void _onSelectOrder(Emitter<OrderDetailsState> emit, _SelectOrder event) {
    emit(OrderDetailsState.selected(event.orderEntity));
  }

  Future<void> _onGetEPaymentTerms(
      Emitter<OrderDetailsState> emit, _GetEPaymentTerms event) async {
    try {
      emit(const OrderDetailsState.loading());
      var result = await _getEPaymentTerms.execute(NoParams());
      await result.whenSuccess((success) async {
        emit(OrderDetailsState.termsLoaded(success.data));
      });
      result
          .whenError((error) => emit(OrderDetailsState.failed(error.message)));
    } catch (e) {
      emit(OrderDetailsState.failed(e.toString()));
    }
  }
}
