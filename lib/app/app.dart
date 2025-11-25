import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../core/utils/resources/resources.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';
import '../features/car/presentation/bloc/brand_bloc/brand_bloc.dart';
import '../features/car/presentation/bloc/brand_cars_bloc/brand_cars_bloc.dart';
import '../features/cart/presentation/bloc/cart_cubit/cart_cubit.dart';
import '../features/cart/presentation/bloc/order_bloc/order_bloc.dart';
import '../features/cart/presentation/bloc/order_details_bloc/order_details_bloc.dart';
import '../features/customer_car/presentation/bloc/customer_car_bloc/customer_car_bloc.dart';
import '../features/customer_car/presentation/bloc/odometer_bloc/odometer_bloc.dart';
import '../features/guest/presentation/bloc/car_checking_bloc.dart';
import '../features/installment/presentation/bloc/installment_bloc/installment_bloc.dart';
import '../features/main/presentation/bloc/image_bloc/image_bloc.dart';
import '../features/main/presentation/bloc/main_bloc/main_bloc.dart';
import '../features/marketing/presentation/bloc/promotion_details_bloc/promotion_details_bloc.dart';
import '../features/marketing/presentation/bloc/promotions_bloc/promotions_bloc.dart';
import '../features/mobile_service/presentation/bloc/mobile_service_bloc/mobile_service_bloc.dart';
import '../features/online_booking/presentation/bloc/appointment_bloc/appointment_bloc.dart';
import '../features/online_booking/presentation/bloc/appointment_checkout_bloc/appointment_checkout_bloc.dart';
import '../features/online_booking/presentation/bloc/appointment_details_bloc/appointment_details_bloc.dart';
import '../features/online_booking/presentation/bloc/available_appointment_bloc/available_appointment_bloc.dart';
import '../features/profile/presentation/bloc/profile_bloc/profile_bloc.dart';
import '../features/quick_service/presentation/bloc/quick_service_bloc/quick_service_bloc.dart';
import '../features/spare_parts/presentation/bloc/spare_parts_bloc.dart';
import '../generated/locale_keys.g.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 928),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (secondContext, child) => ResponsiveBreakpoints.builder(
                breakpoints: [
                  const Breakpoint(start: 0, end: 450, name: MOBILE),
                  const Breakpoint(start: 451, end: 800, name: TABLET),
                  const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                  const Breakpoint(
                      start: 1921, end: double.infinity, name: '4K'),
                ],
                child: Builder(builder: (_) {
                  return MultiBlocProvider(
                      providers: [
                        BlocProvider(create: (_) => BrandBloc()),
                        BlocProvider(create: (_) => BrandCarsBloc()),
                        BlocProvider(create: (context) => CartCubit()),
                        BlocProvider(create: (_) => SparePartsBloc()),
                        BlocProvider(create: (_) => PromotionDetailsBloc()),
                        BlocProvider(create: (_) => MobileServiceBloc()),
                        BlocProvider(create: (_) => AppointmentBloc()),
                        BlocProvider(create: (_) => AvailableAppointmentBloc()),
                        BlocProvider(create: (_) => OrderBloc()),
                        BlocProvider(create: (_) => QuickServiceBloc()),
                        BlocProvider(create: (_) => OrderDetailsBloc()),
                        BlocProvider(create: (_) => AppointmentDetailsBloc()),
                        BlocProvider(create: (_) => OdometerBloc()),
                        BlocProvider(create: (_) => ImageBloc()),
                        BlocProvider(create: (_) => MainBloc()),
                        BlocProvider(create: (_) => CarCheckingBloc()),
                        BlocProvider(create: (_) => AppointmentCheckoutBloc()),
                        BlocProvider(create: (_) => InstallmentBloc()),
                        BlocProvider(create: (_) => PromotionsBloc()),
                        BlocProvider(create: (_) => CustomerCarBloc()),
                        BlocProvider(create: (_) => ProfileBloc()),
                        BlocProvider(create: (_) => AuthBloc()),
                      ],
                      child: MaterialApp.router(
                        localizationsDelegates: context.localizationDelegates,
                        supportedLocales: context.supportedLocales,
                        locale: context.locale,
                        onGenerateTitle: (context) => LocaleKeys.appName.tr(),
                        scrollBehavior: const MaterialScrollBehavior().copyWith(
                          dragDevices: {
                            PointerDeviceKind.mouse,
                            PointerDeviceKind.touch,
                          },
                        ),
                        theme: buildLightTheme(context.locale.languageCode),
                        themeMode: ThemeMode.light,
                        darkTheme: darkTheme,
                        routerConfig: appRouter,
                        debugShowCheckedModeBanner: false,
                      ));
                })));
  }
}
