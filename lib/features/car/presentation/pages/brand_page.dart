import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/core/utils/local_storage/app_preferences.dart';
import 'package:mac_mobile/widgets/image_widgets/image_widget.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/dialog/confirm_exit_dialog.dart';
import '../../../../widgets/loading_widgets/skeleton_list_loading.dart';
import '../../../guest/presentation/bloc/car_checking_bloc.dart';
import '../bloc/brand_bloc/brand_bloc.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BrandsView();
  }
}

class BrandsView extends StatefulWidget {
  const BrandsView({super.key});

  @override
  State<BrandsView> createState() => _BrandsViewState();
}

class _BrandsViewState extends State<BrandsView> {
  @override
  void initState() {
    context.read<BrandBloc>().add(const BrandEvent.getBrand());
    super.initState();
  }

  Future<bool> _onExitConfirmation() async {
    return await showDialog(
      context: context,
      builder: (context) => ConfirmExitDialog(),
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: getIt<AppPreferences>().userPreferences.isUserLoggedIn()
          ?true:false,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop) {
          bool shouldExit = await _onExitConfirmation();
          if (shouldExit) {
            exit(0);
          }
        }
      },
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              toolbarHeight: AppSizeH.s100,
              title: getIt<AppPreferences>().userPreferences.isUserLoggedIn()
                  ? Text(LocaleKeys.home_carBrands.tr())
                  : const SizedBox.shrink(),
              forceMaterialTransparency: true),
          body: ScreenContainer(
              padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.18,
                  left: AppSizeW.s20,
                  right: AppSizeW.s20),
              child: BlocBuilder<BrandBloc, BrandState>(
                buildWhen: (previous, current) => current.maybeWhen(
                    brandLoaded: (_) => true,
                    brandLoading: () => true,
                    orElse: () {
                      return false;
                    }),
                builder: (context, state) {
                  return state.maybeWhen(
                    brandLoading: () => const SkeletonListLoading(),
                    brandLoaded: (brands) => RefreshIndicator(
                      backgroundColor: Theme.of(context).cardColor,
                      onRefresh: () async => context
                          .read<BrandBloc>()
                          .add(const BrandEvent.getBrand(refresh: true)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (!getIt<AppPreferences>()
                              .userPreferences
                              .isUserLoggedIn()) ...{
                            Text(LocaleKeys.guest_chooseBrand.tr(),style: Theme.of(context).textTheme.headlineSmall),
                            SizedBox(height: AppSizeH.s20)
                          },
                          Expanded(
                            child: ListView.separated(
                                physics: const AlwaysScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        if (getIt<AppPreferences>()
                                            .userPreferences
                                            .isUserLoggedIn()) {
                                          context.push(RoutesPaths.brandCarsRoute,
                                              extra: brands[index]);
                                        } else {
                                          context
                                              .read<CarCheckingBloc>()
                                              .brandId = brands[index].id;
                                          context.push(RoutesPaths.guestOption,
                                              extra: brands[index]);
                                        }
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  AppSizeR.s15),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Theme.of(context)
                                                        .shadowColor
                                                        .withOpacity(0.1),
                                                    spreadRadius: 3,
                                                    blurRadius: 3)
                                              ],
                                              color: Theme.of(context).cardColor),
                                          child: ImageWidget(
                                            url: brands[index].image,
                                            height: AppSizeH.s150,
                                            fit: BoxFit.contain,
                                          )
                                          // child: SizedBox(
                                          //     height: AppSizeH.s190,
                                          //     child: Image.network(brands[index].image)),
                                          ),
                                    ),
                                itemCount: brands.length,
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: AppSizeH.s20)),
                          ),
                          if (!getIt<AppPreferences>()
                              .userPreferences
                              .isUserLoggedIn()) ...{
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              height: AppSizeH.s50,
                              child: ElevatedButton(
                                  onPressed: () {
                                    context.go(RoutesPaths.loginRoute);
                                  },
                                  child: Text(LocaleKeys.auth_login.tr())),
                            ),
                            SizedBox(height: AppSizeH.s60)
                          }
                        ],
                      ),
                    ),
                    orElse: () => Center(child: Text(state.toString())),
                  );
                },
              ))),
    );
  }
}
