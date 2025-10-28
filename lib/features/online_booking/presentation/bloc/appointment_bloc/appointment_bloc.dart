import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../../generated/locale_keys.g.dart';
import '../../../../cart/presentation/bloc/order_bloc/order_bloc.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/use_cases/create_other_appointment.dart';
import '../../../domain/use_cases/create_regular_appointment.dart';
import '../../../domain/use_cases/get_appointment_type.dart';
import '../../../domain/use_cases/get_appointments.dart';
import '../../../entities/appointment/appointment.dart';
import '../../../entities/parameters/appointment_parameters.dart';

part 'appointment_bloc.freezed.dart';

part 'appointment_event.dart';

part 'appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final GetAppointmentType _getAppointmentType = getIt<GetAppointmentType>();
  final CreateOtherAppointment _createOtherAppointment = getIt<CreateOtherAppointment>();
  final GetAppointments _getAppointments = getIt<GetAppointments>();

  String _selectedDate = '';
  String _selectedTime = '';
  int _selectedDealershipId = -1;
  int _selectedTypeId = -1;
  int _selectedServiceOfferId = -1;
  final List<Appointment> _appointments = [];
  bool _hasReachMax = false;
  int _currPage = 1;


  AppointmentBloc() : super(const AppointmentState.initial()) {
    on<AppointmentEvent>((event, emit) async {
      await event.mapOrNull(
          started: (value) {
            _selectedDate = '';
            _selectedTime = '';
          },
          create: (value) async => await _onCreateAppointment(emit, value),
          getType: (value) async => await _onGetType(emit, value));
    });
    on<_GetAppointments>(
        (event, emit) => event.mapOrNull(
              getAppointments: (value) async =>
                  await _onGetAppointments(emit, value),
            ),
        transformer: throttleDroppable(throttleDuration));
  }

  Future<void> _onGetType(
      Emitter<AppointmentState> emit, _GetType event) async {
    try {
        emit(const AppointmentState.loading());
        var result = await _getAppointmentType.execute(NoParams());
        await result.whenSuccess((success) async {
          emit(AppointmentState.loaded(success));
        });
        result
            .whenError((error) => emit(AppointmentState.failed(error.message)));
    } catch (e) {
      emit(AppointmentState.failed(e.toString()));
    }
  }

  Future<void> _onGetAppointments(
      Emitter<AppointmentState> emit, _GetAppointments event) async {
    if (event.firstFetch) {
      _currPage = 1;
      _hasReachMax = false;
      _appointments.clear();
      emit(const AppointmentState.loading());
    }
    if (_hasReachMax) return;
    try {
      var result =
          await _getAppointments.execute(PaginationParams(page: _currPage));
      await result.whenSuccess((success) async {
        if (success.pagination?.currentPage == success.pagination?.lastPage) {
          _hasReachMax = true;
        }
        _appointments.addAll(success.data);
        emit(AppointmentState.appointmentsLoaded(
            List.from(_appointments), _hasReachMax));
      });
      result.whenError((error) => emit(AppointmentState.failed(error.message)));
    } catch (e) {
      emit(AppointmentState.failed(e.toString()));
    }
    _currPage++;
  }

  Future<void> _onCreateAppointment(
      Emitter<AppointmentState> emit, _CreateAppointment event) async {
    if (_selectedTypeId == 1 && _selectedServiceOfferId == -1) {
      emit(AppointmentState.invalidParameters(
          LocaleKeys.onlineBooking_chooseServiceOffer.tr()));
    } else if (_selectedTime.isNotEmpty &&
        _selectedDate.isNotEmpty &&
        _selectedTypeId != -1) {
      try {
        emit(const AppointmentState.createLoading());
        var result = await _createOtherAppointment.execute(AppointmentParameters(
                dealershipId: _selectedDealershipId,
                appointmentTime: '$_selectedDate $_selectedTime',
                typeId: _selectedTypeId));
        await result.whenSuccess((success) async {
          emit(const AppointmentState.createSuccessfully());
        });
        result
            .whenError((error) => emit(AppointmentState.failed(error.message)));
      } catch (e) {
        emit(AppointmentState.failed(e.toString()));
      }
    } else {
      emit(AppointmentState.invalidParameters(
          LocaleKeys.onlineBooking_chooseBookingTime.tr()));
    }
  }

  void setSelectedDate(String selectedDate) {
    _selectedDate = selectedDate;
  }

  void setSelectedTime(String selectedTime) {
    _selectedTime = selectedTime;
  }

  set selectedServiceOffer(serviceOfferId) =>
      _selectedServiceOfferId = serviceOfferId;

  void setSelectedDealershipId(int id) {
    _selectedDealershipId = id;
  }

  void setSelectedTypeId(int id) {
    _selectedTypeId = id;
  }
}
