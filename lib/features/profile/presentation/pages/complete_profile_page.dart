import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/widgets/custom_containers/scroll_screen_container.dart';
import 'package:mac_mobile/widgets/loading_widgets/willpop_scope_loading.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/validator.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../../widgets/text_fields/custom_text_field_with_upper_label.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../entities/profile_parameters.dart';
import '../../profile.dart';
import '../bloc/profile_enum_bloc/profile_enum_bloc.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => ProfileEnumBloc()),
    ], child: const CompleteProfileView());
  }
}

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  int? selectedCityId;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    context.read<ProfileEnumBloc>().add(const ProfileEnumEvent.getCities());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(title: Text(LocaleKeys.profile_complete_profile.tr())),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(AppSizeW.s30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: AppSizeH.s50,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<ProfileBloc>().add(
                            ProfileEvent.updateProfile(ProfileParameters(
                                firstName: firstNameController.text,
                                cityId: selectedCityId??-1,
                                lastName: lastNameController.text)));
                      }
                    },
                    child: Text(LocaleKeys.save.tr())),
              ),
              SizedBox(height: AppSizeH.s20),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: AppSizeH.s50,
                child: ElevatedButton(
                    onPressed: () {
                      //todo call logout event
                      // context.read<AuthBloc>().add(const AuthEvent.logout());
                      getIt<AppPreferences>()
                          .userPreferences
                          .logOutPref();
                      context.go(RoutesPaths.loginRoute);
                    },
                    child: Text(LocaleKeys.auth_logout.tr())),
              ),
            ],
          ),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<ProfileBloc, ProfileState>(listener: (context, state) {
              state.maybeWhen(
                loading: () => LoadingDialog.show(context),
                updateSuccessfully: (profileModel) {
                  LoadingDialog.hide(context);
                  profileModel.customerCar == null
                      ? context.go(RoutesPaths.addCarRoute)
                      : context.go(RoutesPaths.homeRoute);
                },
                failed: (errorMessage) {
                  LoadingDialog.hide(context);
                  Helper.instance.messageHelper
                      .showErrorMessage(context: context, message: errorMessage);
                },
                orElse: () {},
              );
            }),
            BlocListener<AuthBloc, AuthState>(listener: (context, state) {
              state.when(
                  initial: () {},
                  resendOTPSuccess: () {},
                  loading: () {
                    LoadingDialog.show(context);
                  },
                  loggedInSuccess: () {
                    LoadingDialog.hide(context);
                    context.push(RoutesPaths.otpRoute);
                  },
                  verifySuccess: (customerVerify) {},
                  logoutSuccess: () {},
                  failed: (errorMessage) {
                    LoadingDialog.hide(context);
                    Helper.instance.messageHelper.showErrorMessage(
                        context: context, message: errorMessage);
                  });
            }),
          ],
          child: ScrollScreenContainer(
              crossAxisAlignment: CrossAxisAlignment.start,
              margin: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.11),
              padding: EdgeInsets.symmetric(
                  vertical: AppSizeH.s50, horizontal: AppSizeW.s15),
              children: [
                Text(LocaleKeys.profile_complete_profile_message.tr(),
                    style: Theme.of(context).textTheme.bodyMedium),
                Form(
                    key: _formKey,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomTextFieldWithUpperLabel(
                        validator: Validator.nameValidation,
                        label: LocaleKeys.profile_firstName,
                        controller: firstNameController,
                      ),
                      CustomTextFieldWithUpperLabel(
                        validator: Validator.nameValidation,
                        label: LocaleKeys.profile_lastName,
                        controller: lastNameController,
                      ),
                      SizedBox(height: AppSizeH.s20),
                      BlocBuilder<ProfileEnumBloc, ProfileEnumState>(
                          buildWhen: (previous, current) => current.maybeWhen(
                              cityLoaded: (cities) => true,
                              loading: () => true,
                              orElse: () => false),
                          builder: (context, enumState) {
                            return BlocBuilder<ProfileBloc, ProfileState>(
                                buildWhen: (previous, current) {
                              return current.maybeWhen(
                                loading: () => false,
                                failed: (errorMessage) => false,
                                initial: () => false,
                                updateSuccessfully: (profileModel) => true,
                                getSuccess: (profileModel) => true,
                                orElse: () => false,
                              );
                            }, builder: (context, state) {
                              return BesideDropDown<BasicModel>(
                                value: enumState.maybeWhen(
                                  cityLoaded: (cities) => cities.firstWhereOrNull((c) => c.id == selectedCityId),
                                  orElse: () => null,
                                ),
                                validator: Validator.validateDropdownValue,
                                label: LocaleKeys.profile_city.tr(),
                                loading: enumState.maybeWhen(loading: () => true, orElse: () => false),
                                items: enumState.maybeWhen(
                                    cityLoaded: (cities) => cities,
                                    orElse: () => []),
                                stringConverter: (city) {
                                  return city.name;
                                },
                                onChanged: (value) {
                                  selectedCityId = value?.id ?? -1;
                                },
                              );
                            });
                          }),
                    ]))
              ]),
        ));
  }
}
