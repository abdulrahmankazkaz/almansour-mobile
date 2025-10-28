import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quick_service_form_state.dart';

class QuickServiceFormCubit extends Cubit<QuickServiceFormState> {
  QuickServiceFormCubit() : super(const QuickServiceFormState());

  void selectCity(int id) =>
      emit(state.copyWith(selectedCityId: id));

  void selectBranch(int id) =>
      emit(state.copyWith(selectedBranchId: id));

  void selectService(int id) =>
      emit(state.copyWith(selectedServiceId: id));

  void selectDate(DateTime date) =>
      emit(state.copyWith(selectedDate: date));

  void selectTime(String time) =>
      emit(state.copyWith(selectedTime: time));

  void reset() => emit(const QuickServiceFormState());
}
