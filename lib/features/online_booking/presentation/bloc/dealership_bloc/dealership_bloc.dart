import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/features/online_booking/domain/use_cases/get_dealership.dart';
import 'package:mac_mobile/features/online_booking/entities/dealership/dealership.dart';

import '../../../../profile/entities/no_params.dart';

part 'dealership_bloc.freezed.dart';
part 'dealership_event.dart';
part 'dealership_state.dart';

class DealershipBloc extends Bloc<DealershipEvent, DealershipState> {

  final GetDealerships _getDealerships = getIt<GetDealerships>();
  List<Dealership> dealerships = [];


  DealershipBloc() : super(const DealershipState.initial()) {
    on<DealershipEvent>((event, emit) async {
      await event.map(
          started: (value) {},
          getDealership: (value) async =>
              await _onDealershipGetEvent(emit, value), getInternalDealership: (value) async => await _onGetInternalDealershipEvent(emit, value));
    });
  }

  Future<void> _onDealershipGetEvent(
      Emitter<DealershipState> emit, _GetDealership event) async {
    try {
      if (dealerships.isEmpty) {
        emit(const DealershipState.loading());
        var result = await _getDealerships.execute(NoParams());
        await result.whenSuccess((success) async {
          dealerships = success;
          emit(DealershipState.loaded(dealerships));
        });
        result.whenError((error) => emit(DealershipState.failed(error.message)));
      } else {
        emit(DealershipState.loaded(dealerships));
      }
    } catch (e) {
      emit(DealershipState.failed(e.toString()));
    }
  }
  Future<void> _onGetInternalDealershipEvent(Emitter<DealershipState> emit, _GetInternalDealership event) async {
    try {
      if (dealerships.isEmpty) {
        emit(const DealershipState.loading());
        var result = await _getDealerships.execute(NoParams());
        await result.whenSuccess((success) async {
          dealerships = success;
          emit(DealershipState.loaded(dealerships.where((element) => element.type?.id==1).toList()));
        });
        result.whenError((error) => emit(DealershipState.failed(error.message)));
      } else {
        emit(DealershipState.loaded(dealerships));
      }
    } catch (e) {
      emit(DealershipState.failed(e.toString()));
    }
  }
}
