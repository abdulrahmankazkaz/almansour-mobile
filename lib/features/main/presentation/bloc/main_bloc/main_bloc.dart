import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/main/domain/usecases/get_order_types.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/usecases/get_payment_methods.dart';
import '../../../entities/config_entity/config_entity.dart';

part 'main_bloc.freezed.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final GetOrderTypes _getOrderTypes = getIt<GetOrderTypes>();
  final GetPaymentMethods _getPaymentMethods = getIt<GetPaymentMethods>();

  MainBloc() : super(const MainState.initial()) {
    on<MainEvent>((event, emit) async {
      await event.map(
          started: (value) {},
          getOrderType: (value) async => await _onGetOrderType(emit, value),
          getPaymentMethods: (value) async => await _onGetPaymentMethods(emit,value));

    });
  }

  Future<void> _onGetOrderType(
      Emitter<MainState> emit, _GetOrderType event) async {
    try {
      emit(const MainState.loading());
      (await _getOrderTypes.execute(NoParams())).when((success) async {
        emit(MainState.orderTypeLoaded(success.data));
      }, (error) => emit(MainState.failed(error.message)));
    } catch (e) {
      emit(MainState.failed(e.toString()));
    }
  }

  Future<void> _onGetPaymentMethods(Emitter<MainState> emit,_GetPaymentMethods event) async {
    try {
      emit(const MainState.loading());
      (await _getPaymentMethods.execute(NoParams())).when((success) async {
        emit(MainState.paymentMethodsLoaded(success.data));
      }, (error) => emit(MainState.failed(error.message)));
    } catch (e) {
      emit(MainState.failed(e.toString()));
    }
  }

}
