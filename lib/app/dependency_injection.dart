import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mac_mobile/features/quick_service/domain/usecases/get_quick_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/auth/data/repositories/auth_repository_implementation.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/domain/usecases/login_use_case.dart';
import '../features/auth/domain/usecases/resend_otp_usecase.dart';
import '../features/cart/data/data_sources/order_datasource.dart';
import '../features/cart/data/repositories/order_repository_implementation.dart';
import '../features/cart/domain/repositories/order_repository.dart';
import '../features/cart/domain/use_cases/cancel_order.dart';
import '../features/cart/domain/use_cases/get_order_details.dart';
import '../features/cart/domain/use_cases/get_orders.dart';
import '../features/cart/domain/use_cases/pay_order.dart';
import '../features/cart/domain/use_cases/send_order.dart';
import '../features/customer_car/data/datasources/customer_car_datasource.dart';
import '../features/customer_car/domain/repositories/customer_car_repository.dart';
import '../features/customer_car/domain/usecases/get_customer_car.dart';
import '../features/customer_car/domain/usecases/set_customer_car.dart';
import '../features/customer_car/domain/usecases/update_odometer.dart';
import '../features/geofencing/data/data_sources/geofencing_data_source.dart';
import '../features/geofencing/domain/repositories/geofencing_repository.dart';
import '../features/geofencing/domain/use_cases/get_service_centers.dart';
import '../features/guest/data/data_sources/guest_datasource.dart';
import '../features/guest/domain/repositories/guest_repository.dart';
import '../features/guest/domain/use_cases/check_car.dart';
import '../features/installment/data/data_sources/installment_datasource.dart';
import '../features/installment/domain/repositories/installment_repository.dart';
import '../features/installment/domain/use_cases/get_installment_requirements.dart';
import '../features/main/data/datasources/main_datasource.dart';
import '../features/main/domain/repositories/main_repository.dart';
import '../features/main/domain/usecases/get_order_types.dart';
import '../features/main/domain/usecases/get_payment_methods.dart';
import '../features/main/domain/usecases/upload_image.dart';
import '../features/marketing/domain/use_cases/get_promotions.dart';
import '../features/marketing/domain/use_cases/show_promotion.dart';
import '../features/mobile_service/data/data_sources/mobile_service_datasource.dart';
import '../features/mobile_service/data/repositories/mobile_service_repository_implementation.dart';
import '../features/mobile_service/domain/use_cases/create_mobile_service.dart';
import '../features/mobile_service/domain/use_cases/get_areas.dart';
import '../features/mobile_service/domain/use_cases/get_booked_mobile_services.dart';
import '../features/mobile_service/domain/use_cases/get_cities.dart';
import '../features/mobile_service/domain/use_cases/get_mobile_service_type.dart';
import '../features/mobile_service/domain/use_cases/get_streets.dart';
import '../features/notification/data/data_sources/notification_datasource.dart';
import '../features/notification/data/repositories/notification_repository_implementation.dart';
import '../features/notification/domain/repositories/notification_repository.dart';
import '../features/notification/domain/use_cases/get_notifications.dart';
import '../features/notification/domain/use_cases/update_fcm_token.dart';
import '../features/online_booking/data/data_sources/booking_datasource.dart';
import '../features/online_booking/domain/repositories/booking_repository.dart';
import '../features/online_booking/domain/use_cases/approve_updated_appointment.dart';
import '../features/online_booking/domain/use_cases/create_other_appointment.dart';
import '../features/online_booking/domain/use_cases/get_other_appointment_payment_details.dart';
import '../features/online_booking/domain/use_cases/get_appointment_type.dart';
import '../features/online_booking/domain/use_cases/get_appointments.dart';
import '../features/online_booking/domain/use_cases/get_available_appointment.dart';
import '../features/online_booking/domain/use_cases/get_dealership.dart';
import '../features/online_booking/domain/use_cases/make_appointment_payment.dart';
import '../features/profile/data/datasources/profile_datasource.dart';
import '../features/profile/domain/usecases/deactivate_account.dart';
import '../features/profile/domain/usecases/delete_account.dart';
import '../features/profile/domain/usecases/get_cities.dart';
import '../features/profile/domain/usecases/get_genders.dart';
import '../features/quick_service/data/datasources/quick_service_datasource.dart';
import '../features/quick_service/data/repositories/quick_service_repository_implementation.dart';
import '../features/quick_service/domain/repositories/quick_service_repository.dart';
import '../features/quick_service/domain/usecases/create_quick_service.dart';
import '../features/quick_service/domain/usecases/get_quick_service_available.dart';
import '../features/quick_service/domain/usecases/get_quick_service_cities.dart';
import '../features/quick_service/domain/usecases/get_quick_service_dealerships.dart';
import '../features/quick_service/domain/usecases/get_quick_service_services.dart';
import '../features/service_offer/data/data_sources/service_offer_datasource.dart';
import '../features/service_offer/domain/use_cases/get_service_offer.dart';
import '../features/spare_parts/data/datasources/spare_parts_datasource.dart';
import '../features/spare_parts/domain/usecases/get_spare_parts.dart';
import '../features/survey/data/data_sources/survey_datasource.dart';
import '../features/survey/domain/repositories/survey_repository.dart';
import '../features/survey/domain/use_cases/send_survey.dart';
import '../core/network/dio_factory.dart';
import '../core/network/network_info.dart';
import '../core/utils/local_storage/app_preferences.dart';
import '../features/auth/data/datasources/auth_datasource.dart';
import '../features/auth/domain/usecases/logout_use_case.dart';
import '../features/auth/domain/usecases/verify_number_use_case.dart';
import '../features/car/data/datasources/car_datasource.dart';
import '../features/car/data/repositories/car_repository_implementation.dart';
import '../features/car/domain/repositories/car_repository.dart';
import '../features/car/domain/usecases/get_brand.dart';
import '../features/car/domain/usecases/get_brand_cars.dart';
import '../features/car/domain/usecases/get_car.dart';
import '../features/car/domain/usecases/get_car_names.dart';
import '../features/car/domain/usecases/get_trim_level.dart';
import '../features/cart/domain/use_cases/get_payment_terms.dart';
import '../features/customer_car/data/repositories/customer_car_repository_implementation.dart';
import '../features/geofencing/data/repositories/geofencing_repository_implementation.dart';
import '../features/guest/data/repositories/guest_repository_implementation.dart';
import '../features/installment/data/repositories/installment_repository_implementation.dart';
import '../features/main/data/repositories/main_repository_implementation.dart';
import '../features/marketing/data/data_sources/marketing_datasource.dart';
import '../features/marketing/data/repositories/marketing_repository_implementation.dart';
import '../features/marketing/domain/repositories/marketing_repository.dart';
import '../features/mobile_service/domain/repositories/mobile_service_repository.dart';
import '../features/mobile_service/domain/use_cases/get_mobile_service_available_appointments.dart';
import '../features/online_booking/data/repositories/booking_repository_implementation.dart';
import '../features/online_booking/domain/use_cases/create_regular_appointment.dart';
import '../features/online_booking/domain/use_cases/get_regular_appointment_payment_details.dart';
import '../features/profile/data/repositories/profile_repository_implementation.dart';
import '../features/profile/domain/repositories/profile_repository.dart';
import '../features/profile/domain/usecases/get_profile.dart';
import '../features/profile/domain/usecases/update_profile_use_case.dart';
import '../features/service_offer/data/repositories/service_offer_repository_implementation.dart';
import '../features/service_offer/domain/repositories/service_offer_repository.dart';
import '../features/spare_parts/data/repositories/spare_parts_repository_implementation.dart';
import '../features/spare_parts/domain/repositories/spare_parts_repository.dart';
import '../features/survey/data/repositories/survey_repository_implementation.dart';



final getIt = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerFactory<SharedPreferences>(() => sharedPreferences);
  getIt.registerFactory<AppPreferences>(() => AppPreferences(getIt()));
  getIt.registerSingleton<DioFactory>(DioFactory(getIt()));
  var dio = await getIt<DioFactory>().getDio();
  getIt.registerLazySingleton<NetworkInfo>(
          () => NetworkInfoImplementer(Connectivity()));
  registerUseCases(getIt);
  registerDataSource(getIt,dio);
  registerRepositories(getIt);
}

void registerUseCases(GetIt instance) {

  //region Main
  instance.registerLazySingleton<UploadImage>(
          () => UploadImage(instance()));
  instance.registerLazySingleton<GetOrderTypes>(
          () => GetOrderTypes(instance()));
  instance.registerLazySingleton<GetPaymentMethods>(
          () => GetPaymentMethods(instance()));
  //endregion

  //region Guest
  instance.registerLazySingleton<CheckCar>(
          () => CheckCar(instance()));
  //endregion

  //region Authentication
  instance.registerLazySingleton<LoginUseCase>(
          () => LoginUseCase(instance()));
  instance.registerLazySingleton<VerifyNumberUseCase>(
          () => VerifyNumberUseCase(instance()));
  instance.registerLazySingleton<ResendOTPUseCase>(
          () => ResendOTPUseCase(instance()));
  instance.registerLazySingleton<LogoutUseCase>(
          () => LogoutUseCase(instance()));
  //endregion

  //region profile
  instance.registerLazySingleton<UpdateProfile>(
          () => UpdateProfile(instance()));
  instance.registerLazySingleton<GetProfile>(
          () => GetProfile(instance()));
  instance.registerLazySingleton<GetGenders>(
          () => GetGenders(instance()));
  instance.registerLazySingleton<GetCities>(
          () => GetCities(instance()));
  instance.registerLazySingleton<DeactivateAccount>(
          () => DeactivateAccount(instance()));
  instance.registerLazySingleton<DeleteAccount>(
          () => DeleteAccount(instance()));
  //endregion

  // region car
  instance.registerLazySingleton<GetBrands>(
          () => GetBrands(instance()));
  instance.registerLazySingleton<GetBrandCars>(
          () => GetBrandCars(instance()));
  instance.registerLazySingleton<GetCar>(
          () => GetCar(instance()));
  instance.registerLazySingleton<GetCarNames>(
          () => GetCarNames(instance()));
  instance.registerLazySingleton<GetTrimLevels>(
          () => GetTrimLevels(instance()));
  //endregion

  // region customer Car
  instance.registerLazySingleton<SetCustomerCar>(
          () => SetCustomerCar(instance()));
  instance.registerLazySingleton<GetCustomerCar>(
          () => GetCustomerCar(instance()));
  instance.registerLazySingleton<UpdateOdometer>(
          () => UpdateOdometer(instance()));
  //endregion

  // region Spare Parts
  instance.registerLazySingleton<GetSpareParts>(
          () => GetSpareParts(instance()));
  //endregion

  // region Booking
  instance.registerLazySingleton<GetDealerships>(
          () => GetDealerships(instance()));
  instance.registerLazySingleton<GetAppointmentType>(
          () => GetAppointmentType(instance()));
  instance.registerLazySingleton<GetAvailableAppointments>(
          () => GetAvailableAppointments(instance()));
  instance.registerLazySingleton<CreateOtherAppointment>(
          () => CreateOtherAppointment(instance()));
  instance.registerLazySingleton<CreateRegularAppointment>(
          () => CreateRegularAppointment(instance()));
  instance.registerLazySingleton<GetAppointments>(
          () => GetAppointments(instance()));
  instance.registerLazySingleton<MakeAppointmentPayment>(
          () => MakeAppointmentPayment(instance()));
  instance.registerLazySingleton<ApproveUpdatedAppointment>(
          () => ApproveUpdatedAppointment(instance()));
  instance.registerLazySingleton<GetOtherAppointmentPaymentDetails>(
          () => GetOtherAppointmentPaymentDetails(instance()));
  instance.registerLazySingleton<GetRegularAppointmentPaymentDetails>(
          () => GetRegularAppointmentPaymentDetails(instance()));
  //endregion

  // region Marketing
  instance.registerLazySingleton<GetPromotions>(
          () => GetPromotions(instance()));
  instance.registerLazySingleton<ShowPromotion>(
          () => ShowPromotion(instance()));
  //endregion

  // region Notification
  instance.registerLazySingleton<UpdateFCMToken>(
          () => UpdateFCMToken(instance()));
  instance.registerLazySingleton<GetNotifications>(
          () => GetNotifications(instance()));
  //endregion

  // region Order
  instance.registerLazySingleton<GetOrderDetails>(
          () => GetOrderDetails(instance()));
  instance.registerLazySingleton<SendOrder>(
          () => SendOrder(instance()));
  instance.registerLazySingleton<PayOrder>(
          () => PayOrder(instance()));
  instance.registerLazySingleton<GetOrders>(
          () => GetOrders(instance()));
  instance.registerLazySingleton<GetPaymentTerms>(
          () => GetPaymentTerms(instance()));
  instance.registerLazySingleton<CancelOrder>(
          () => CancelOrder(instance()));
  //endregion

  // region Feedback

  //endregion


  // region mobile service
  instance.registerLazySingleton<CreateMobileService>(
          () => CreateMobileService(instance()));
  instance.registerLazySingleton<GetCity>(
          () => GetCity(instance()));
  instance.registerLazySingleton<GetAreas>(
          () => GetAreas(instance()));
  instance.registerLazySingleton<GetStreets>(
          () => GetStreets(instance()));
  instance.registerLazySingleton<GetMobileServiceType>(
          () => GetMobileServiceType(instance()));
  instance.registerLazySingleton<GetMobileServiceAvailableAppointments>(
          () => GetMobileServiceAvailableAppointments(instance()));
  instance.registerLazySingleton<GetBookedMobileServices>(
          () => GetBookedMobileServices(instance()));
  //endregion




  // region Quick service
  instance.registerLazySingleton<GetQuickServiceCities>(
          () => GetQuickServiceCities(instance()));
  instance.registerLazySingleton<GetQuickServiceDealerships>(
          () => GetQuickServiceDealerships(instance()));
  instance.registerLazySingleton<GetQuickServiceServices>(
          () => GetQuickServiceServices(instance()));
  instance.registerLazySingleton<GetQuickServiceAvailable>(
          () => GetQuickServiceAvailable(instance()));
  instance.registerLazySingleton<CreateQuickService>(
          () => CreateQuickService(instance()));
  instance.registerLazySingleton<GetQuickServices>(
          () => GetQuickServices(instance()));
  //endregion

  // region service offer
  instance.registerLazySingleton<GetServiceOffers>(
          () => GetServiceOffers(instance()));
  //endregion

  // region survey
  instance.registerLazySingleton<SendSurvey>(
          () => SendSurvey(instance()));
  //endregion

  // region installment
  instance.registerLazySingleton<GetInstallmentRequirements>(
          () => GetInstallmentRequirements(instance()));
  //endregion

  // region geofencing
  instance.registerLazySingleton<GetServiceCenters>(
          () => GetServiceCenters(instance()));
  //endregion


}

void registerRepositories(GetIt instance) {


  //region Main
  instance.registerLazySingleton<MainRepository>(
          () => MainRepositoryImplementation(instance(),instance()));
  //endregion

  //region Guest
  instance.registerLazySingleton<GuestRepository>(
          () => GuestRepositoryImplementation(instance(),instance()));
  //endregion

  //region Authentication
  instance.registerLazySingleton<AuthRepository>(
          () => AuthRepositoryImplementation(instance(),instance()));
  //endregion

  // region Profile
  instance.registerLazySingleton<ProfileRepository>(
          () => ProfileRepositoryImplementation(instance(),instance()));
  //endregion

  // region Car
  instance.registerLazySingleton<CustomerCarRepository>(
          () => CustomerCarRepositoryImplementation(instance(),instance()));

  instance.registerLazySingleton<CarRepository>(
          () => CarRepositoryImplementation(instance(),instance()));
  //endregion

  // region Spare Parts
  instance.registerLazySingleton<SparePartsRepository>(
          () => SparePartsRepositoryImplementation(instance(),instance()));
  //endregion

  // region Booking
  instance.registerLazySingleton<BookingRepository>(
          () => BookingRepositoryImplementation(instance(),instance()));
  //endregion

  // region Marketing
  instance.registerLazySingleton<MarketingRepository>(
          () => MarketingRepositoryImplementation(instance(),instance()));
  //endregion

  // region Notifications
  instance.registerLazySingleton<NotificationRepository>(
          () => NotificationRepositoryImpl(instance(),instance()));
  //endregion

  // region Order
  instance.registerLazySingleton<OrderRepository>(
          () => OrderRepositoryImplementation(instance(),instance()));
  //endregion




  // region mobile service
  instance.registerLazySingleton<MobileServiceRepository>(
          () => MobileServiceRepositoryImplementation(instance(),instance()));
  //endregion

  // region Quick service
  instance.registerLazySingleton<QuickServiceRepository>(
          () => QuickServiceRepositoryImplementation(instance(),instance()));
  //endregion

  // region service offer
  instance.registerLazySingleton<ServiceOfferRepository>(
          () => ServiceOfferRepositoryImplementation(instance(),instance()));
  //endregion

  // region survey
  instance.registerLazySingleton<SurveyRepository>(
          () => SurveyRepositoryImplementation(instance(),instance()));
  //endregion

  // region installment
  instance.registerLazySingleton<InstallmentRepository>(
          () => InstallmentRepositoryImplementation(instance(),instance()));
  //endregion

  // region geofencing
  instance.registerLazySingleton<GeofencingRepository>(
          () => GeofencingRepositoryImplementation(instance(),instance()));
  //endregion



}

void registerDataSource(GetIt instance,Dio dio) {


  //region Main
  instance.registerLazySingleton<MainDatasource>(
          () => MainDatasource(dio));
  //endregion

  //region Guest
  instance.registerLazySingleton<GuestDatasource>(
          () => GuestDatasource(dio));
  //endregion

  //region Authentication
  instance.registerLazySingleton<AuthDatasource>(
          () => AuthDatasource(dio));
  //endregion

  // region Profile
  instance.registerLazySingleton<ProfileDatasource>(
          () => ProfileDatasource(dio));
  //endregion

  // region car
  instance.registerLazySingleton<CustomerCarDatasource>(
          () => CustomerCarDatasource(dio));

  instance.registerLazySingleton<CarDatasource>(
          () => CarDatasource(dio));
  //endregion

  // region Spare Parts
  instance.registerLazySingleton<SparePartsDatasource>(
          () => SparePartsDatasource(dio));
  //endregion

  // region Booking
  instance.registerLazySingleton<BookingDatasource>(
          () => BookingDatasource(dio));
  //endregion

  // region Notification
  instance.registerLazySingleton<NotificationDatasource>(
          () => NotificationDatasource(dio));
  //endregion

  // region Marketing
  instance.registerLazySingleton<MarketingDatasource>(
          () => MarketingDatasource(dio));
  //endregion

  // region Order
  instance.registerLazySingleton<OrderDatasource>(
          () => OrderDatasource(dio));
  //endregion


  // region mobile service
  instance.registerLazySingleton<MobileServiceDatasource>(
          () => MobileServiceDatasource(dio));
  //endregion

  // region Quick service
  instance.registerLazySingleton<QuickServiceDatasource>(
          () => QuickServiceDatasource(dio));
  //endregion


  // region service offer
  instance.registerLazySingleton<ServiceOfferDatasource>(
          () => ServiceOfferDatasource(dio));
  //endregion

  // region survey
  instance.registerLazySingleton<SurveyDatasource>(
          () => SurveyDatasource(dio));
  //endregion

  // region installment
  instance.registerLazySingleton<InstallmentDatasource>(
          () => InstallmentDatasource(dio));
  //endregion

  // region geofencing
  instance.registerLazySingleton<GeofencingDatasource>(
          () => GeofencingDatasource(dio));
  //endregion



}

