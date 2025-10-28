import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/core/utils/local_storage/app_preferences.dart';
import 'package:mac_mobile/features/customer_car/domain/usecases/get_customer_car.dart';
import 'package:mac_mobile/features/customer_car/entities/customer_car/customer_car.dart';
import 'package:mac_mobile/features/customer_car/entities/parameters/customer_car_parameters.dart';
import 'package:mac_mobile/features/profile/entities/no_params.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../domain/usecases/set_customer_car.dart';

part 'customer_car_bloc.freezed.dart';
part 'customer_car_event.dart';
part 'customer_car_state.dart';

class CustomerCarBloc extends Bloc<CustomerCarEvent, CustomerCarState> {
  final SetCustomerCar _setCustomerCar = getIt<SetCustomerCar>();
  final GetCustomerCar _getCustomerCar = getIt<GetCustomerCar>();
  String _firstLicenseImage = '';
  String _secondLicenseImage = '';


  CustomerCarBloc()
      : super(const CustomerCarState.initial()) {
    on<CustomerCarEvent>((event, emit) async {
      await event.map(
        started: (value) {
          _firstLicenseImage = '';
          _secondLicenseImage = '';
        },
        getCustomerCar: (event) async =>
            await _onGetCustomerCarEvent(emit, event),
        setCustomerCar: (value) async =>
            await _onSetCustomerCarEvent(emit, value),
      );
    });
  }

  Future<void> _onSetCustomerCarEvent(
      Emitter<CustomerCarState> emit, _SetCustomerCarEvent value) async {
    try {
      emit(const CustomerCarState.loading());
      (await _setCustomerCar.execute(value.customerCarParameters)).when(
          (success) async {
            getIt<AppPreferences>().userPreferences.saveUserData(getIt<AppPreferences>().userPreferences.getUserData?.copyWith(customerCar: success));
        emit(const CustomerCarState.setSuccessfully());
      }, (error) => emit(CustomerCarState.failed(error.message)));
    } catch (e) {
      emit(CustomerCarState.failed(e.toString()));
    }
  }

  void setFirstLicenseImages(String imgUrl){
    _firstLicenseImage=imgUrl;
  }
  void setSecondLicenseImages(String imgUrl){
    _secondLicenseImage=imgUrl;
  }

  String get firstLicenseImage=> _firstLicenseImage;

  String get secondLicenseImage=> _secondLicenseImage;

  Future<void> _onGetCustomerCarEvent(
      Emitter<CustomerCarState> emit, _GetCustomerCarEvent event) async {
      try {
      emit(const CustomerCarState.loading());
      (await _getCustomerCar.execute(NoParams())).when((success) async {
        if(success == null){
          emit(const CustomerCarState.mustAddCar());
        }
        else {
          getIt<AppPreferences>().userPreferences.saveUserData(getIt<AppPreferences>().userPreferences.getUserData?.copyWith(customerCar: success));
          emit(CustomerCarState.getSuccessfully(success));
        }
      }, (error) {
        emit(CustomerCarState.failed(error.message));
      });
    } catch (e) {
      emit(CustomerCarState.failed(e.toString()));
    }
    // else {
    //   emit(const CustomerCarState.mustAddCar());
    // }
  }
}
