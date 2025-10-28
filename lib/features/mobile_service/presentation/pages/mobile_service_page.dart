import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';
import 'package:mac_mobile/widgets/dialog/warning_dialog.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/utils/resources/validator.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../cart/presentation/bloc/map_bloc/map_bloc.dart';
import '../bloc/mobile_service_bloc/mobile_service_bloc.dart';
import '../bloc/mobile_service_enum_bloc/mobile_service_enum_bloc.dart';
import '../cubit/mobile_service_form_cubit/mobile_service_form_cubit.dart';

class MobileServicePage extends StatelessWidget {
  const MobileServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => MapBloc()),
      BlocProvider(create: (_) => MobileServiceEnumBloc()),
      BlocProvider(create: (_) => MobileServiceFormCubit()),
    ], child: const MobileServiceView());
  }
}

class MobileServiceView extends StatefulWidget {
  const MobileServiceView({super.key});

  @override
  State<MobileServiceView> createState() => _MobileServiceViewState();
}

class _MobileServiceViewState extends State<MobileServiceView> {
  int _selectedStreetId = -1;

  @override
  void initState() {
    context
        .read<MobileServiceEnumBloc>()
        .add(const MobileServiceEnumEvent.getCities());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(LocaleKeys.mobileService_mobileService.tr()),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<MobileServiceEnumBloc, MobileServiceEnumState>(
              listener: (context, state) {
            state.whenOrNull(
                citiesLoaded: (cities) {
                  if (cities.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) => WarningDialog(
                              message:
                                  LocaleKeys.mobileService_serviceNotAvailable,
                            ));
                  }
                },
                failed: (errorMessage) => Helper.instance.messageHelper
                    .showErrorMessage(context: context, message: errorMessage));
          }),
          BlocListener<MapBloc, MapState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () {
                return;
              },
              failed: (message) {
                LoadingDialog.hide(context);
                return Helper.instance.messageHelper
                    .showErrorMessage(message: message);
              },
              permissionDenied: () {
                LoadingDialog.hide(context);
                return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Column(children: [
                            SizedBox(height: AppSizeH.s20),
                            Text(LocaleKeys.location_turnOn.tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: ColorManager.black))
                          ]),
                          actions: [
                            ElevatedButton(
                                style: Theme.of(context)
                                    .primaryElevatedButtonTheme
                                    .copyWith(
                                      padding: WidgetStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s4,
                                              vertical: AppSizeH.s6)),
                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              AppSizeR.s50),
                                        ),
                                      ),
                                    ),
                                onPressed: () {
                                  context.pop();
                                  Geolocator.openLocationSettings();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Spacer(),
                                    Text(LocaleKeys.location_openSetting.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                                color: ColorManager.surface)),
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(AppSizeW.s6),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                          shape: BoxShape.circle),
                                      child: const Icon(Icons.arrow_forward,
                                          color: ColorManager.surface),
                                    )
                                  ],
                                )),
                          ],
                        ));
              },
              loading: () => LoadingDialog.show(context),
              locationFetched: (position) {
                LoadingDialog.hide(context);
                context.push(RoutesPaths.mobileServiceTime,
                    extra: _selectedStreetId);
                return;
              },
              permissionDeniedForever: () {
                LoadingDialog.hide(context);
                return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Column(children: [
                            Text(LocaleKeys.sorry.tr(),
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headlineMedium),
                            SizedBox(height: AppSizeH.s20),
                            Text(LocaleKeys.location_givePermission.tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: ColorManager.black))
                          ]),
                          actions: [
                            ElevatedButton(
                                style: Theme.of(context)
                                    .primaryElevatedButtonTheme
                                    .copyWith(
                                      padding: WidgetStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s4,
                                              vertical: AppSizeH.s6)),
                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              AppSizeR.s50),
                                        ),
                                      ),
                                    ),
                                onPressed: () {
                                  context.pop();
                                  Geolocator.openAppSettings();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Spacer(),
                                    Text(LocaleKeys.location_openSetting.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                                color: ColorManager.surface)),
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(AppSizeW.s6),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                          shape: BoxShape.circle),
                                      child: const Icon(Icons.arrow_forward,
                                          color: ColorManager.surface),
                                    )
                                  ],
                                )),
                          ],
                        ));
              },
            ),
            child: ScreenContainer(
              padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.13,
                  right: AppSizeW.s20,
                  left: AppSizeW.s20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: AppSizeH.s30),
                        height: AppSizeW.s200,
                        width: AppSizeW.s200,
                        child: SvgPicture.asset(Assets.iconsOnlineBooking)),
                    SizedBox(height: AppSizeH.s20),
                    Text(LocaleKeys.onlineBooking_onlineAppointment.tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontSize: AppSizeSp.s13)),
                    SizedBox(height: AppSizeH.s40),
                    Form(
                      // key: _formKey,
                      child: Column(children: [
                        BlocBuilder<MobileServiceEnumBloc,
                                MobileServiceEnumState>(
                            buildWhen: (previous, current) => current.maybeWhen(
                                citiesLoaded: (cities) => true,
                                citiesLoading: () => true,
                                orElse: () => false),
                            builder: (context, enumState) {
                              return BesideDropDown<BasicModel>(
                                validator: Validator.validateDropdownValue,
                                label: LocaleKeys.profile_city.tr(),
                                loading: enumState.maybeWhen(
                                    citiesLoading: () => true,
                                    orElse: () => false),
                                items: enumState.maybeWhen(
                                    citiesLoaded: (cities) => cities,
                                    orElse: () => []),
                                stringConverter: (city) {
                                  return city.name;
                                },
                                onChanged: (value) {
                                  context.read<MobileServiceEnumBloc>().add(
                                      const MobileServiceEnumEvent.started());
                                  context.read<MobileServiceEnumBloc>().add(
                                      MobileServiceEnumEvent.getAreas(
                                          value!.id));
                                  // selectedCityId = value?.id ?? -1;
                                },
                              );
                            }),
                        SizedBox(height: AppSizeH.s20),
                        BlocBuilder<MobileServiceEnumBloc,
                                MobileServiceEnumState>(
                            buildWhen: (previous, current) => current.maybeWhen(
                                areasLoaded: (areas) => true,
                                areasLoading: () => true,
                                orElse: () => false),
                            builder: (context, enumState) {
                              return BesideDropDown<BasicModel>(
                                validator: Validator.validateDropdownValue,
                                label: LocaleKeys.mobileService_area.tr(),
                                loading: enumState.maybeWhen(
                                    areasLoading: () => true,
                                    orElse: () => false),
                                items: enumState.maybeWhen(
                                    areasLoaded: (areas) => areas,
                                    orElse: () => []),
                                stringConverter: (area) {
                                  return area.name;
                                },
                                onChanged: (value) {
                                  context.read<MobileServiceEnumBloc>().add(
                                      MobileServiceEnumEvent.getStreets(
                                          value!.id));
                                },
                              );
                            }),
                        SizedBox(height: AppSizeH.s20),
                        BlocBuilder<MobileServiceEnumBloc,
                                MobileServiceEnumState>(
                            buildWhen: (previous, current) => current.maybeWhen(
                                streetLoaded: (streets) => true,
                                streetsLoading: () => true,
                                orElse: () => false),
                            builder: (context, enumState) {
                              return BesideDropDown<BasicModel>(
                                validator: Validator.validateDropdownValue,
                                label: LocaleKeys.mobileService_street.tr(),
                                loading: enumState.maybeWhen(
                                    streetsLoading: () => true,
                                    orElse: () => false),
                                items: enumState.maybeWhen(
                                    streetLoaded: (streets) => streets,
                                    orElse: () => []),
                                stringConverter: (street) {
                                  return street.name;
                                },
                                onChanged: (value) {
                                  _selectedStreetId = value!.id;
                                },
                              );
                            }),
                      ]),
                    ),
                    SizedBox(height: AppSizeH.s30),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: ElevatedButton(
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                              context.push(RoutesPaths.mobileServiceTime,
                                  extra: _selectedStreetId);
                            // }
                          },
                          child: Text(LocaleKeys.next.tr())),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
        child: ScreenContainer(
          padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.13,
              right: AppSizeW.s20,
              left: AppSizeW.s20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                      padding: EdgeInsets.only(top: AppSizeH.s30),
                      height: AppSizeW.s200,
                      width: AppSizeW.s200,
                      child: SvgPicture.asset(Assets.iconsOnlineBooking)),
                ),
                SizedBox(height: AppSizeH.s20),
                Text(LocaleKeys.onlineBooking_onlineAppointment.tr(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(fontSize: AppSizeSp.s13)),
                SizedBox(height: AppSizeH.s40),
                Column(children: [
                  BlocBuilder<MobileServiceEnumBloc, MobileServiceEnumState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                          citiesLoaded: (cities) => true,
                          citiesLoading: () => true,
                          orElse: () => false),
                      builder: (context, enumState) {
                        return BesideDropDown<BasicModel>(
                          validator: Validator.validateDropdownValue,
                          label: LocaleKeys.profile_city.tr(),
                          loading: enumState.maybeWhen(
                              citiesLoading: () => true, orElse: () => false),
                          items: enumState.maybeWhen(
                              citiesLoaded: (cities) => cities,
                              orElse: () => []),
                          stringConverter: (city) {
                            return city.name;
                          },
                          onChanged: (value) {
                            context
                                .read<MobileServiceEnumBloc>()
                                .add(const MobileServiceEnumEvent.started());
                            context.read<MobileServiceEnumBloc>().add(
                                MobileServiceEnumEvent.getAreas(value!.id));
                            context.read<MobileServiceFormCubit>().selectCity(value!.id);
                            // selectedCityId = value?.id ?? -1;
                          },
                        );
                      }),
                  SizedBox(height: AppSizeH.s20),
                  BlocBuilder<MobileServiceEnumBloc, MobileServiceEnumState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                          areasLoaded: (areas) => true,
                          areasLoading: () => true,
                          orElse: () => false),
                      builder: (context, enumState) {
                        return BesideDropDown<BasicModel>(
                          validator: Validator.validateDropdownValue,
                          label: LocaleKeys.mobileService_area.tr(),
                          loading: enumState.maybeWhen(
                              areasLoading: () => true, orElse: () => false),
                          items: enumState.maybeWhen(
                              areasLoaded: (areas) => areas,
                              orElse: () => []),
                          stringConverter: (area) {
                            return area.name;
                          },
                          onChanged: (value) {
                            context.read<MobileServiceEnumBloc>().add(
                                MobileServiceEnumEvent.getStreets(value!.id));
                            context.read<MobileServiceFormCubit>().selectArea(value!.id);

                          },
                        );
                      }),
                  SizedBox(height: AppSizeH.s20),
                  BlocBuilder<MobileServiceEnumBloc, MobileServiceEnumState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                          streetLoaded: (streets) => true,
                          streetsLoading: () => true,
                          orElse: () => false),
                      builder: (context, enumState) {
                        return BesideDropDown<BasicModel>(
                          validator: Validator.validateDropdownValue,
                          label: LocaleKeys.mobileService_street.tr(),
                          loading: enumState.maybeWhen(
                              streetsLoading: () => true,
                              orElse: () => false),
                          items: enumState.maybeWhen(
                              streetLoaded: (streets) => streets,
                              orElse: () => []),
                          stringConverter: (street) {
                            return street.name;
                          },
                          onChanged: (value) {
                            _selectedStreetId = value!.id;
                            context.read<MobileServiceFormCubit>().selectStreet(value!.id);

                          },
                        );
                      }),
                ]),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppSizeW.s20, vertical: AppSizeH.s30),
        width: MediaQuery.sizeOf(context).width,
        child: BlocBuilder<MobileServiceFormCubit,MobileServiceFormState>(
          builder:(context, state) =>  ElevatedButton(
              onPressed:
              state.isComplete?() {

                  context
                      .read<MapBloc>()
                      .add(MapEvent.requestPermission((lng, lat) {
                    context.read<MobileServiceBloc>().longitude = lng;
                    context.read<MobileServiceBloc>().latitude = lat;
                  }));

              }:null,
              child: Text(LocaleKeys.next.tr())),
        ),
      ),
    );
  }
}
