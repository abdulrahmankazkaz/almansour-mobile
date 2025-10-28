import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/mobile_service/presentation/pages/mobile_service_appointment_time_page.dart';
import '../../features/mobile_service/presentation/pages/mobile_service_book_details_page.dart';
import '../../features/survey/presentation/pages/survey_page.dart';
import '../../app/dependency_injection.dart';
import '../../features/auth/presentation/pages/auth_page.dart';
import '../../features/auth/presentation/pages/otp_page.dart';
import '../../features/car/presentation/pages/brand_cars_page.dart';
import '../../features/car/presentation/pages/brand_page.dart';
import '../../features/car/presentation/pages/car_details_page.dart';
import '../../features/cart/presentation/pages/cart_page.dart';
import '../../features/cart/presentation/pages/check_out_page.dart';
import '../../features/cart/presentation/pages/order_details_page.dart';
import '../../features/cart/presentation/pages/order_success_page.dart';
import '../../features/customer_car/presentation/presentation/add_car_page.dart';
import '../../features/customer_car/presentation/presentation/customer_car_page.dart';
import '../../features/customer_car/presentation/presentation/odometer_page.dart';
import '../../features/geofencing/presentation/pages/center_location_page.dart';
import '../../features/guest/presentation/pages/car_checking_page.dart';
import '../../features/guest/presentation/pages/checking_result_page.dart';
import '../../features/guest/presentation/pages/guest_option_page.dart';
import '../../features/home/presentation/home_page.dart';
import '../../features/home/widgets/my_orders_page.dart';
import '../../features/installment/presentation/pages/installment_details_page.dart';
import '../../features/installment/presentation/pages/installment_page.dart';
import '../../features/installment/presentation/pages/required_document_page.dart';
import '../../features/main/presentation/main_page.dart';
import '../../features/marketing/presentation/pages/promotions/promotion_details_page.dart';
import '../../features/marketing/presentation/pages/promotions/promotions_page.dart';
import '../../features/mobile_service/presentation/pages/mobile_service_page.dart';
import '../../features/quick_service/presentation/booked_quick_service_details_page.dart';
import '../../features/quick_service/presentation/quick_service_page.dart';
import '../../features/notification/presentation/pages/notification_page.dart';
import '../../features/online_booking/presentation/pages/appointment_checkout_page.dart';
import '../../features/online_booking/presentation/pages/appointment_details_page.dart';
import '../../features/online_booking/presentation/pages/dealership_page.dart';
import '../../features/online_booking/presentation/pages/online_booking_page.dart';
import '../../features/profile/presentation/pages/complete_profile_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/settings/presentation/pages/app_setting_page.dart';
import '../../features/settings/presentation/pages/setting_page.dart';
import '../../features/spare_parts/presentation/pages/spare_parts_page.dart';
import '../../features/splash/splash_page.dart';
import '../../features/splash/welcome_page.dart';
import '../../features/support/presentation/pages/support_page.dart';
import '../../widgets/custom_containers/screen_container.dart';
import '../router/router_observer.dart';
import '../utils/local_storage/app_preferences.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');

final _sectionNavigatorKey = GlobalKey<NavigatorState>();
// final shellNavigatorKey = GlobalKey<NavigatorState>();
var appPref = getIt<AppPreferences>();
final loggedIn = appPref.userPreferences.isUserLoggedIn();

class RoutesNames {
  static const String videoSplashRoute = 'video_splash';
  static const String splashRoute = 'splash';
  static const String welcomeRoute = 'welcome';
  static const String loginRoute = 'login';
  static const String otpRoute = 'otp';
  static const String homeRoute = 'home';
  static const String mainRoute = 'main';
  static const String profileRoute = 'profile';
  static const String completeProfileRoute = 'complete_profile';
  static const String addCarRoute = 'add_car';
  static const String settingRoute = 'setting';
  static const String carRoute = 'my_car';
  static const String orderRoute = 'order';
  static const String cart = 'cart';
  static const String offerRoute = 'offer';
  static const String brandsRoute = 'brands';
  static const String brandCarsRoute = 'brand_cars';
  static const String carDetailsRoute = 'car_details';
  static const String onlineBookingRoute = 'online_booking';
  static const String dealershipRoute = 'dealership';
  static const String sparePartsRoute = 'spare_parts';
  static const String odometer = 'odometer';
  static const String checkout = 'checkout';
  static const String map = 'map';
  static const String installment = 'installment';
  static const String installmentDetails = 'installment_details';
  static const String requiredDocument = 'required_document';
  static const String geofencing = 'geofencing';
  static const String centerLocation = 'center_location';
  static const String promotions = 'promotions';
  static const String promotionDetails = 'promotion_details';

  // static const String customerComplaint = 'customer_complaint';
  static const String serviceOffer = 'service_offer';
  static const String checkoutServiceOffer = 'checkout_service_offer';
  static const String orderDetailsPage = 'order_details_page';
  static const String carOrderDetailsPage = 'car_order_details';
  static const String appointmentDetailsPage = 'appointment_details';
  static const String carBookingCheckout = 'car_booking_checkout';
  static const String support = 'support';
  static const String notification = 'notification';
  static const String languages = 'languages';
  static const String guestOption = 'guest_option';
  static const String carChecking = 'car_checking';
  static const String checkingResult = 'checking_result';
  static const String appSetting = 'app_setting';
  static const String orderSuccess = 'order_success';
  static const String previousChecking = 'previous_checking';
  static const String mobileService = 'mobile_service';
  static const String quickService = 'quick_service';
  static const String mobileServiceTime = 'mobile_service_appointment_time';
  static const String appointmentCheckout = 'appointment_checkout';
  static const String survey = 'survey';
  static const String mobileServiceBookDetails = 'mobile_service_book_details';
  static const String quickServiceBookDetails = 'quick_service_book_details';
}

class RoutesPaths {
  static const String homeRoute = '/Home';
  static const String mainRoute = '/Main';
  static const String welcomeRoute = '/Welcome';
  static const String splashRoute = '/splash';
  static const String videoSplashRoute = '/video_splash';
  static const String loginRoute = '/login';
  static const String otpRoute = '/otp';
  static const String profileRoute = '/profile';
  static const String completeProfileRoute = '/complete_profile';
  static const String addCarRoute = '/add_car';
  static const String settingRoute = '/setting';
  static const String carRoute = '/my_car';
  static const String orderRoute = '/order';
  static const String offerRoute = '/offer';
  static const String brandsRoute = '/brands';
  static const String brandCarsRoute = '/brand_cars';
  static const String carDetailsRoute = '/car_details';
  static const String onlineBookingRoute = '/online_booking';
  static const String dealershipRoute = '/dealership';
  static const String sparePartsRoute = '/spare_parts';
  static const String odometer = '/odometer';
  static const String checkout = '/checkout';
  static const String map = '/map';
  static const String installment = '/installment';
  static const String installmentDetails = '/installment_details';
  static const String requiredDocument = '/required_document';
  static const String geofencing = '/geofencing';
  static const String centerLocation = '/center_location';
  static const String promotions = '/promotions';
  static const String promotionDetails = '/promotion_details';

  // static const String customerComplaint = '/customer_complaint';
  static const String serviceOffer = '/service_offer';
  static const String checkoutServiceOffer = '/checkout_service_offer';
  static const String orderDetailsPage = '/order_details_page';
  static const String carOrderDetailsPage = '/car_order_details';
  static const String appointmentDetailsPage = '/appointment_details';
  static const String carBookingCheckout = '/car_booking_checkout';
  static const String cart = '/cart';
  static const String support = '/support';
  static const String notification = '/notification';
  static const String languages = '/languages';
  static const String guestOption = '/guest_option';
  static const String carChecking = '/car_checking';
  static const String checkingResult = '/checking_result';
  static const String appSetting = '/app_setting';
  static const String orderSuccess = '/order_success';
  static const String previousChecking = '/previous_checking';
  static const String mobileService = '/mobile_service';
  static const String quickService = '/quick_service';
  static const String mobileServiceTime = '/mobile_service_appointment_time';
  static const String appointmentCheckout = '/appointment_checkout';
  static const String survey = '/survey';
  static const String mobileServiceBookDetails = '/mobile_service_book_details';
  static const String quickServiceBookDetails = '/quick_service_book_details';
}

late StatefulNavigationShell appNavigationShell;
final GoRouter appRouter = GoRouter(
  initialLocation: RoutesPaths.splashRoute,
  navigatorKey: rootNavigatorKey,
  observers: [MyRouteObserver()],
  redirect: (context, state) async {
    var appPref = getIt<AppPreferences>();
    final loggedIn = appPref.userPreferences.isUserLoggedIn();
    final mustNavigateToRoute = appPref.userPreferences.getNavigatorRoute;
    final isUserVisitor = appPref.userPreferences.getIsUserVisitor();
    // final isNewsPage = state.uri.path.contains(RoutesPaths.news);
    final isLoginPage = state.uri.path.contains(RoutesPaths.loginRoute);
    final isPromotionDetailsPage =
        state.uri.path.contains(RoutesPaths.promotionDetails);
    final isCarDetailsPage =
        state.uri.path.contains(RoutesPaths.carDetailsRoute);
    final isWelcomePage = state.uri.path.contains(RoutesPaths.welcomeRoute);
    if (appPref.userPreferences.getNeedToVerifyUser()) {
      return RoutesPaths.otpRoute;
    } else if (isWelcomePage &&
        loggedIn &&
        appPref.userPreferences.getUserData?.userStatus?.id == 2) {
      return RoutesPaths.completeProfileRoute;
    }  else if ((isWelcomePage || isLoginPage) &&
        loggedIn &&
        !isPromotionDetailsPage &&
        !isCarDetailsPage) {
      return RoutesPaths.homeRoute;
    }
    // else if(isHomePage && mustNavigateToRoute.isNotEmpty){
    //   return mustNavigateToRoute;
    // }
    // else if(!loggedIn && !isWelcomePage && !isOTPPage  && !isSplashPage && !isUserVisitor){
    //   return RoutesPaths.loginRoute;
    // }
    return null;
  },
  routes: [
    GoRoute(
        name: RoutesNames.splashRoute,
        path: RoutesPaths.splashRoute,
        builder: (context, state) => const SplashPage()),
    GoRoute(
        name: RoutesNames.welcomeRoute,
        path: RoutesPaths.welcomeRoute,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const WelcomePage())),
    // GoRoute(
    //     name: RoutesNames.splashRoute,
    //     path: RoutesPaths.splashRoute,
    //     builder: (context, state) => SplashPage()),
    GoRoute(
      name: RoutesNames.loginRoute,
      path: RoutesPaths.loginRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const AuthPage()),
    ),
    GoRoute(
      name: RoutesNames.otpRoute,
      path: RoutesPaths.otpRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const OTPPage()),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1.0)),
            child: MainPage(child: navigationShell));
      },
      branches: [
        // first branch
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            // top route inside branch
            GoRoute(
                path: RoutesPaths.homeRoute,
                pageBuilder: (context, state) => FadeTransitionPage(
                    key: const ValueKey(RoutesNames.homeRoute),
                    child: const HomePage())),
            GoRoute(
              name: RoutesNames.notification,
              path: RoutesPaths.notification,
              builder: (context, state) => MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: const NotificationPage()),
            ),
            GoRoute(
                path: RoutesPaths.settingRoute,
                pageBuilder: (context, state) => FadeTransitionPage(
                    key: const ValueKey(RoutesNames.settingRoute),
                    child: const ScreenContainer(child: SettingPage()))),
            GoRoute(
                path: RoutesPaths.carRoute,
                pageBuilder: (context, state) => FadeTransitionPage(
                    key: const ValueKey(RoutesNames.carRoute),
                    child: const CustomerCarPage())),
            GoRoute(
                path: RoutesPaths.orderRoute,
                pageBuilder: (context, state) => FadeTransitionPage(
                    key: const ValueKey(RoutesNames.orderRoute),
                    child: const ScreenContainer(child: MyOrdersPage()))),
          ],
        ),
      ],
    ),

    GoRoute(
      name: RoutesNames.profileRoute,
      path: RoutesPaths.profileRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const ProfilePage()),
    ),
    GoRoute(
      name: RoutesNames.completeProfileRoute,
      path: RoutesPaths.completeProfileRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CompleteProfilePage()),
    ),
    GoRoute(
      name: RoutesNames.addCarRoute,
      path: RoutesPaths.addCarRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const AddCarPage()),
    ),
    GoRoute(
      name: RoutesNames.brandsRoute,
      path: RoutesPaths.brandsRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const BrandsPage()),
    ),
    GoRoute(
      name: RoutesNames.brandCarsRoute,
      path: RoutesPaths.brandCarsRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const BrandCarsPage()),
    ),
    GoRoute(
      name: RoutesNames.carDetailsRoute,
      path: RoutesPaths.carDetailsRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CarDetailsPage()),
    ),
    GoRoute(
      name: RoutesNames.onlineBookingRoute,
      path: RoutesPaths.onlineBookingRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const OnlineBookingPage()),
    ),
    GoRoute(
      name: RoutesNames.dealershipRoute,
      path: RoutesPaths.dealershipRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const DealershipPage()),
    ),
    GoRoute(
      name: RoutesNames.sparePartsRoute,
      path: RoutesPaths.sparePartsRoute,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const SparePartsPage()),
    ),
    GoRoute(
      name: RoutesNames.odometer,
      path: RoutesPaths.odometer,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const OdometerPage()),
    ),
    GoRoute(
      name: RoutesNames.cart,
      path: RoutesPaths.cart,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CartPage()),
    ),
    GoRoute(
      name: RoutesNames.checkout,
      path: RoutesPaths.checkout,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CheckoutPage()),
    ),
    // GoRoute(
    //   name: RoutesNames.map,
    //   path: RoutesPaths.map,
    //   builder: (context, state) => const MapPage(),
    // ),
    GoRoute(
      name: RoutesNames.installment,
      path: RoutesPaths.installment,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const InstallmentPage()),
    ),
    GoRoute(
      name: RoutesNames.installmentDetails,
      path: RoutesPaths.installmentDetails,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const InstallmentDetailsPage()),
    ),
    GoRoute(
      name: RoutesNames.requiredDocument,
      path: RoutesPaths.requiredDocument,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const RequiredDocumentsPage()),
    ),
    GoRoute(
      name: RoutesNames.geofencing,
      path: RoutesPaths.geofencing,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CenterLocationPage()),
    ),
    GoRoute(
      name: RoutesNames.centerLocation,
      path: RoutesPaths.centerLocation,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CenterLocationPage()),
    ),
    GoRoute(
      name: RoutesNames.promotions,
      path: RoutesPaths.promotions,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const PromotionsPage()),
    ),
    GoRoute(
      name: RoutesNames.promotionDetails,
      path: RoutesPaths.promotionDetails,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const PromotionDetailsPage()),
    ),
    // GoRoute(
    //   name: RoutesNames.customerComplaint,
    //   path: RoutesPaths.customerComplaint,
    //   builder: (context, state) => const CustomerComplaintPage(),
    // ),
    GoRoute(
      name: RoutesNames.orderDetailsPage,
      path: RoutesPaths.orderDetailsPage,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const OrderDetailsPage()),
    ),
    GoRoute(
      name: RoutesNames.appointmentDetailsPage,
      path: RoutesPaths.appointmentDetailsPage,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const AppointmentDetailsPage()),
    ),

    GoRoute(
      name: RoutesNames.support,
      path: RoutesPaths.support,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const SupportPage()),
    ),
    GoRoute(
      name: RoutesNames.guestOption,
      path: RoutesPaths.guestOption,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const GuestOptionPage()),
    ),
    GoRoute(
      name: RoutesNames.carChecking,
      path: RoutesPaths.carChecking,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CarCheckingPage()),
    ),
    GoRoute(
      name: RoutesNames.checkingResult,
      path: RoutesPaths.checkingResult,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const CheckingResultPage()),
    ),
    GoRoute(
      name: RoutesNames.appSetting,
      path: RoutesPaths.appSetting,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const AppSettingPage()),
    ),
    GoRoute(
      name: RoutesNames.orderSuccess,
      path: RoutesPaths.orderSuccess,
      builder: (context, state) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: const OrderSuccessPage()),
    ),
    GoRoute(
        name: RoutesNames.mobileService,
        path: RoutesPaths.mobileService,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const MobileServicePage())),
    GoRoute(
        name: RoutesNames.quickService,
        path: RoutesPaths.quickService,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const QuickServiceView())),
    GoRoute(
        name: RoutesNames.mobileServiceTime,
        path: RoutesPaths.mobileServiceTime,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const MobileServiceAppointmentTimePage())),
    GoRoute(
        name: RoutesNames.appointmentCheckout,
        path: RoutesPaths.appointmentCheckout,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const AppointmentCheckoutPage())),
    GoRoute(
        name: RoutesNames.survey,
        path: RoutesPaths.survey,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const SurveyPage())),
    GoRoute(
        name: RoutesNames.mobileServiceBookDetails,
        path: RoutesPaths.mobileServiceBookDetails,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const MobileServiceBookDetailsPage())),
    GoRoute(
        name: RoutesNames.quickServiceBookDetails,
        path: RoutesPaths.quickServiceBookDetails,
        builder: (context, state) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: const BookedQuickServiceDetailsPage())),
  ],
);

class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ));

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
