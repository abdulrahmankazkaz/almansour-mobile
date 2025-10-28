import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/use_cases/create_mobile_service.dart';
import '../../../domain/use_cases/get_booked_mobile_services.dart';
import '../../../entities/booked_mobile_service/booked_mobile_service.dart';
import '../../../entities/parameters/mobile_service_parameters.dart';

part 'mobile_service_bloc.freezed.dart';
part 'mobile_service_event.dart';
part 'mobile_service_state.dart';

class MobileServiceBloc extends Bloc<MobileServiceEvent, MobileServiceState> {
  final CreateMobileService _createMobileService = getIt<CreateMobileService>();
  final GetBookedMobileServices _getBookedMobileServices =
      getIt<GetBookedMobileServices>();

  String _selectedDate = '';
  String _selectedTime = '';
  String _lng = '';
  String _lat = '';
  int    _typeId = -1;

  MobileServiceBloc() : super(const MobileServiceState.initial()) {
    on<MobileServiceEvent>((event, emit) async {
      await event.map(
          started: (value) {
            _selectedDate = '';
            _selectedTime = '';
            _typeId = -1;
          },
          createMobileService: (value) async =>
              await _onCreateEvent(emit, value),
          get: (value) async => await _onGetEvent(emit, value));
    });
  }

  Future<void> _onCreateEvent(
      Emitter<MobileServiceState> emit, _CreateMobileService event) async {
    try {
      if(_typeId != -1 && _selectedDate.isNotEmpty && _selectedTime.isNotEmpty) {
        emit(const MobileServiceState.loading());
        (await _createMobileService.execute(MobileServiceParameters(
              streetId: event.streetId,
              lat: _lat,
              lng: _lng,
              typeId: _typeId,
              appointmentTime: '$_selectedDate $_selectedTime')))
          .when((success) async {
        emit(const MobileServiceState.createSuccessfully());
      }, (error) => emit(MobileServiceState.failed(error.message)));
      }
    } catch (e) {
      emit(MobileServiceState.failed(e.toString()));
    }
  }

  Future<void> _onGetEvent(Emitter<MobileServiceState> emit, _Get event) async {
    try {
      emit(const MobileServiceState.fetchLoading());
      (await _getBookedMobileServices.execute(NoParams())).when(
          (success) async {
        if (success.data.isEmpty) {
          emit(const MobileServiceState.empty());
        } else {
          emit(MobileServiceState.loaded(success.data));
        }
      }, (error) => emit(MobileServiceState.failed(error.message)));
    } catch (e) {
      emit(MobileServiceState.failed(e.toString()));
    }
  }

  set selectedDate(String date) => _selectedDate = date;

  set selectedTime(String time) => _selectedTime = time;

  set longitude(String lng) => _lng = lng;

  set latitude(String lat) => _lat = lat;

  set typeId(int id) => _typeId = id;
}
