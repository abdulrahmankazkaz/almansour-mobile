import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../cart/entities/order_details/order_details.dart';
import '../../../domain/use_cases/create_regular_appointment.dart';
import '../../../domain/use_cases/get_other_appointment_payment_details.dart';
import '../../../domain/use_cases/get_regular_appointment_payment_details.dart';
import '../../../domain/use_cases/make_appointment_payment.dart';
import '../../../entities/appointment_payment/appointment_payment.dart';
import '../../../entities/parameters/appointment_parameters.dart';
import '../../../entities/parameters/appointment_payment_parameters.dart';

part 'appointment_checkout_bloc.freezed.dart';
part 'appointment_checkout_event.dart';
part 'appointment_checkout_state.dart';

class AppointmentCheckoutBloc
    extends Bloc<AppointmentCheckoutEvent, AppointmentCheckoutState> {
  int _appointmentId = -1;
  int _appointmentTypeId = -1;
  String _appointmentDate = '';
  String _appointmentTime = '';
  int _dealerShipId = -1;
  int _serviceOfferId = -1;
  int _currentPaymentMethodId = -1;
  int _currentServiceOfferId = -1;
  int _currentDealershipId = -1;
  int _currentAppointmentTypeId = -1;

  final MakeAppointmentPayment _makeAppointmentPayment =
      getIt<MakeAppointmentPayment>();
  final GetOtherAppointmentPaymentDetails _getOtherAppointmentPaymentDetails =
      getIt<GetOtherAppointmentPaymentDetails>();
  final GetRegularAppointmentPaymentDetails
      _getRegularAppointmentPaymentDetails =
      getIt<GetRegularAppointmentPaymentDetails>();
  final CreateRegularAppointment _createRegularAppointment =
      getIt<CreateRegularAppointment>();

  AppointmentCheckoutBloc() : super(const AppointmentCheckoutState.initial()) {
    on<AppointmentCheckoutEvent>((event, emit) async {
      await event.map(
          started: (value) {
            _appointmentDate = '';
            _appointmentTime = '';
            _serviceOfferId = -1;
          },
          checkout: (value) async => await _onCheckoutEvent(emit, value),
          getPaymentDetails: (value) async =>
              await _onGetPaymentDetails(emit, value));
    });
  }

  Future<void> _onCheckoutEvent(
      Emitter<AppointmentCheckoutState> emit, _Checkout event) async {
    try {
      emit(const AppointmentCheckoutState.loading());
      var result = _appointmentId == -1
          ? await _createRegularAppointment.execute(AppointmentParameters(
              dealershipId: _dealerShipId,
              appointmentTime: '$_appointmentDate $_appointmentTime',
              serviceOfferId: _serviceOfferId,
              paymentMethodId: event.paymentMethodId,
              typeId: 1))
          : await _makeAppointmentPayment.execute(AppointmentPaymentParameters(
              id: _appointmentId, paymentMethodId: event.paymentMethodId));
      await result.whenSuccess((success) async {
        emit(AppointmentCheckoutState.success(success.data));
      });
      result.whenError(
          (error) => emit(AppointmentCheckoutState.failed(error.message)));
    } catch (e) {
      emit(AppointmentCheckoutState.failed(e.toString()));
    }
  }

  Future<void> _onGetPaymentDetails(
      Emitter<AppointmentCheckoutState> emit, _GetPaymentDetails event) async {
    if (event.paymentMethodId == _currentPaymentMethodId &&
        _currentAppointmentTypeId == _appointmentTypeId &&
        _currentDealershipId == _dealerShipId &&
        _currentServiceOfferId == _serviceOfferId) {
      LoggerService().logDebug(message: 'no need to re get payment details');
    }
    else {
      try {
        emit(const AppointmentCheckoutState.detailsLoading());
        var result = _appointmentTypeId == 1
            ? await _getRegularAppointmentPaymentDetails.execute(
                AppointmentPaymentParameters(
                    appointmentTime: '$_appointmentDate $_appointmentTime',
                    dealershipId: _dealerShipId,
                    serviceOfferId: _serviceOfferId,
                    paymentMethodId: event.paymentMethodId))
            : await _getOtherAppointmentPaymentDetails.execute(
                AppointmentPaymentParameters(
                    id: _appointmentId,
                    paymentMethodId: event.paymentMethodId));
        await result.whenSuccess((success) async {
          _currentPaymentMethodId = event.paymentMethodId;
          _currentServiceOfferId = _serviceOfferId;
          _currentDealershipId = _dealerShipId;
          _currentAppointmentTypeId = _appointmentTypeId;
          emit(AppointmentCheckoutState.detailsLoaded(success.data));
        });
        result.whenError(
            (error) => emit(AppointmentCheckoutState.failed(error.message)));
      } catch (e) {
        emit(AppointmentCheckoutState.failed(e.toString()));
      }
    }
  }

  set appointmentId(int id) => _appointmentId = id;

  set appointmentTypeId(int id) => _appointmentTypeId = id;

  set appointmentTime(String time) => _appointmentTime = time;

  set appointmentDate(String date) => _appointmentDate = date;

  set serviceOfferId(int id) => _serviceOfferId = id;

  set dealershipId(int id) => _dealerShipId = id;

  set paymentMethodId(int id) {
    _currentPaymentMethodId = id;
    emit(const AppointmentCheckoutState.detailsLoading());
  }


  String get appointmentTime => _appointmentTime;

  String get appointmentDate => _appointmentDate;

  int get serviceOfferId => _serviceOfferId;
}
