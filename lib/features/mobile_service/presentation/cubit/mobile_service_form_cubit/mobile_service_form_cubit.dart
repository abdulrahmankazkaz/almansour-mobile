import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'mobile_service_form_state.dart';

class MobileServiceFormCubit extends Cubit<MobileServiceFormState> {
  MobileServiceFormCubit() : super(MobileServiceFormState());

  void selectCity(int id) => emit(state.copyWith(selectedCityId: id));
  void selectArea(int id) => emit(state.copyWith(selectedAreaId: id));
  void selectStreet(int id) => emit(state.copyWith(selectedStreetId: id));
  void reset() => emit(const MobileServiceFormState());

}
