import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/dependency_injection.dart';
import '../../../profile/entities/no_params.dart';
import '../../domain/use_cases/get_service_offer.dart';
import '../../entities/service_offer/service_offer.dart';

part 'service_offer_bloc.freezed.dart';

part 'service_offer_event.dart';

part 'service_offer_state.dart';

class ServiceOfferBloc extends Bloc<ServiceOfferEvent, ServiceOfferState> {
  final GetServiceOffers _getServiceOffers = getIt<GetServiceOffers>();

  ServiceOfferBloc() : super(const ServiceOfferState.initial()) {
    on<ServiceOfferEvent>((event, emit) async {
      await event.map(
        started: (value) {},
        get: (value) async => await _onGetServiceOffer(emit, value),
      );
    });
  }

  Future<void> _onGetServiceOffer(
      Emitter<ServiceOfferState> emit, _Get event) async {
    try {
      emit(const ServiceOfferState.loading());
      var result = await _getServiceOffers.execute(NoParams());
      await result.whenSuccess((success) async {
        success.isNotEmpty
            ? emit(ServiceOfferState.loaded(success))
            : emit(const ServiceOfferState.empty());
      });
      result
          .whenError((error) => emit(ServiceOfferState.failed(error.message)));
    } catch (e) {
      emit(ServiceOfferState.failed(e.toString()));
    }
  }




}
