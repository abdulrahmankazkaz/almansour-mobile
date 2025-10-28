import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/app/dependency_injection.dart';

import '../../../../../generated/locale_keys.g.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/use_cases/get_service_centers.dart';
import '../../../entities/service_center.dart';

part 'center_location_bloc.freezed.dart';
part 'center_location_event.dart';
part 'center_location_state.dart';

class CenterLocationBloc
    extends Bloc<CenterLocationEvent, CenterLocationState> {

  final GetServiceCenters _getServiceCenters = getIt<GetServiceCenters>();

  CenterLocationBloc() : super(const CenterLocationState.initial()) {
    on<CenterLocationEvent>((event, emit) async {
     await event.map(
        started: (value) {},
        setCenterLocation: (value) async =>await _onSetCenterLocation(emit, value),
        getServiceCenters: (value) async  => await _onGetServiceCenters(emit,value),
      );
    });
  }

  Future<void> _onSetCenterLocation(Emitter<CenterLocationState> emit,
      _SetCenterLocation event) async {
    if (event.lng.isEmpty || event.lat.isEmpty) {
      emit(CenterLocationState.failed(LocaleKeys.location_couldNotFindLocation.tr()));
    }
    else {
      emit(CenterLocationState.loaded(event.lng, event.lat));
    }
  }

  Future<void> _onGetServiceCenters(Emitter<CenterLocationState> emit,_GetServiceCenters event) async {
    try {
        emit(const CenterLocationState.loading());
        var result = await _getServiceCenters.execute(NoParams());
        await result.whenSuccess((success) async {
          emit(CenterLocationState.centersLoaded(success));
        });
        result.whenError((error) => emit(CenterLocationState.failed(error.message)));

    } catch (e) {
      emit(CenterLocationState.failed(e.toString()));
    }
  }

}
