import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mac_mobile/core/utils/helpers/helper.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/features/geofencing/entities/service_center.dart';
import 'package:mac_mobile/features/geofencing/presentation/bloc/center_location_bloc/center_location_bloc.dart';
import 'package:mac_mobile/features/online_booking/presentation/bloc/dealership_bloc/dealership_bloc.dart';
import 'package:mac_mobile/widgets/dropdwon/beside_label_dropdwon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';

class CenterLocationPage extends StatelessWidget {
  const CenterLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => DealershipBloc()),
      BlocProvider(create: (context) => CenterLocationBloc()),
    ], child: const CenterLocationView());
  }
}

class CenterLocationView extends StatefulWidget {
  const CenterLocationView({super.key});

  @override
  State<CenterLocationView> createState() => _CenterLocationViewState();
}

class _CenterLocationViewState extends State<CenterLocationView> {
  String lng = '';
  String lat = '';
  ServiceCenter? _selectedServiceCenter;

  _launchMaps(String lng, String lat) async {
    String androidUrl = 'geo:$lat,$lng';
    String appleUrl = 'https://maps.apple.com/?q=MAC&ll=$lat,$lng&z=50';
    String wazeUrl =
        'https://waze.com/ul?ll= $lat,$lng&navigate=yes?utm_source=com.posttag';
    if (Platform.isAndroid && await canLaunchUrl(Uri.parse(androidUrl))) {
      await launchUrl(Uri.parse(androidUrl),
          mode: LaunchMode.externalApplication);
    }
    if (Platform.isIOS) {
      showDialog(
          context: context,
          builder: (context) => Dialog(
                insetPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.sizeOf(context).height * 0.38),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        child: ElevatedButton(
                            onPressed: () async {
                              if (await canLaunchUrl(Uri.parse(wazeUrl))) {
                                await launchUrl(Uri.parse(wazeUrl),
                                    mode: LaunchMode.externalApplication);
                              } else {
                                throw 'Could not launch url';
                              }
                            },
                            child: Text(LocaleKeys.location_waze.tr())),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        child: ElevatedButton(
                            onPressed: () async {
                              if (await canLaunchUrl(Uri.parse(appleUrl))) {
                                await launchUrl(Uri.parse(appleUrl),
                                    mode: LaunchMode.externalApplication);
                              } else {
                                throw 'Could not launch url';
                              }
                            },
                            child: Text(LocaleKeys.location_appleMaps.tr())),
                      ),
                    ]),
              ));
    }
  }

  @override
  void initState() {
    context
        .read<CenterLocationBloc>()
        .add(const CenterLocationEvent.getServiceCenters());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            title: Text(LocaleKeys.home_geofencing.tr()),
            titleTextStyle: Theme.of(context).textTheme.headlineLarge,
            centerTitle: true,
            forceMaterialTransparency: true),
        body: BlocListener<CenterLocationBloc, CenterLocationState>(
          listener: (context, state) => state.maybeWhen(
              failed: (errorMessage) => Helper.instance.messageHelper
                  .showErrorMessage(context: context, message: errorMessage),
              orElse: () {
                return null;
              }),
          child: ScreenContainer(
              padding: EdgeInsets.only(
                  left: AppSizeW.s20,
                  right: AppSizeW.s20,
                  top: MediaQuery.sizeOf(context).height * 0.15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: AppSizeH.s30),
                    SvgPicture.asset(Assets.iconsCenterLocation,
                        width: MediaQuery.sizeOf(context).width * 0.3),
                    SizedBox(height: AppSizeH.s30),
                    Text(
                        LocaleKeys.location_serviceCenterLocationDescription
                            .tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium),
                    SizedBox(height: AppSizeH.s30),
                    BlocBuilder<CenterLocationBloc, CenterLocationState>(
                        buildWhen: (previous, current) => current.maybeWhen(
                            centersLoaded: (centers) => true,
                            loading: () => true,
                            orElse: () => false),
                        builder: (context, state) {
                          return BesideDropDown<ServiceCenter>(
                            label: LocaleKeys.location_serviceCenter.tr(),
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            hint: LocaleKeys.location_selectServiceCenter.tr(),
                            value: _selectedServiceCenter,
                            loading: state.maybeWhen(loading: () => true, orElse: () => false),
                            onChanged: (p0) {
                              _selectedServiceCenter = p0;
                              lng = p0?.lng ?? '';
                              lat = p0?.lat ?? '';
                              context.read<CenterLocationBloc>().add(
                                  CenterLocationEvent.setCenterLocation(
                                      p0?.lng ?? '', p0?.lat ?? ''));
                            },
                            items: state.whenOrNull(
                                centersLoaded: (centers) => centers)??[],
                            stringConverter: (p0) {
                              return p0.name ?? '';
                            },
                          );
                        }),
                    SizedBox(height: AppSizeH.s30),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(Assets.imagesServiceCenterDirection),
                        Positioned(
                          bottom: -AppSizeH.s10,
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.65,
                            child: ElevatedButton(
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
                                  if (lng.isNotEmpty && lat.isNotEmpty) {
                                    _launchMaps(lng, lat);
                                  } else {
                                    Helper.instance.messageHelper.showToastMessage(
                                        isSuccessToast: true,
                                        context: context,
                                        message: LocaleKeys
                                            .location_selectCenterValidateMessage
                                            .tr());
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Spacer(),
                                    Text(LocaleKeys.location_getDirections.tr(),
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
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
