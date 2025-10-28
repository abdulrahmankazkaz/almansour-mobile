import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'mobile_service_details_form_state.dart';

class MobileServiceDetailsFormCubit extends Cubit<MobileServiceDetailsFormState> {
  MobileServiceDetailsFormCubit() : super(MobileServiceDetailsFormState());


  void selectService(int id) =>
      emit(state.copyWith(selectedServiceId: id));

  void selectDate(DateTime date) =>
      emit(state.copyWith(selectedDate: date));

  void selectTime(String time) =>
      emit(state.copyWith(selectedTime: time));

  void reset() => emit(const MobileServiceDetailsFormState());
}


