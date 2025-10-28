import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/utils/resources/validator.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../../widgets/text_fields/custom_text_field_with_upper_label.dart';
import '../../../main/presentation/widgets/avatar_section.dart';
import '../../../settings/presentation/pages/app_setting_page.dart';
import '../../entities/profile_parameters.dart';
import '../../profile.dart';
import '../bloc/profile_enum_bloc/profile_enum_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProfileEnumBloc()),
      ],
        child: const ProfileView());
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final AppPreferences _appPreferences = getIt<AppPreferences>();
  int selectedCityId = 1;
  BasicModel? userCity;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    context.read<ProfileEnumBloc>().add(const ProfileEnumEvent.getCities());
    phoneNumberController.text = _appPreferences.userPreferences.getUserNumber();
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text(LocaleKeys.profile_accountInfo.tr())),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
              loading: () {LoadingDialog.show(context);},
              updateSuccessfully: (profileModel) {
                Helper.instance.messageHelper.showToastMessage(
                  isSuccessToast: true,
                    context: context, message: LocaleKeys.messages_updatedSuccessfully.tr());
                setState(() {
                  firstNameController.text = profileModel.firstName ?? '';
                  lastNameController.text = profileModel.lastName ?? '';
                  cityController.text = profileModel.city?.name ?? '';
                  userCity = profileModel.city;
                  selectedCityId = profileModel.city?.id ?? 1;
                  phoneNumberController.text = profileModel.mobileNumber ?? '';
                });
                LoadingDialog.hide(context);

              },
              getSuccess: (profileModel) {
                setState(() {
                  firstNameController.text = profileModel.firstName ?? '';
                  lastNameController.text = profileModel.lastName ?? '';
                  cityController.text = profileModel.city?.name ?? '';
                  userCity = profileModel.city;
                  selectedCityId = profileModel.city?.id ?? 1;
                  phoneNumberController.text = profileModel.mobileNumber ?? '';
                });
                LoadingDialog.hide(context);

              },
              accountDeactivated: () => context.go(RoutesPaths.welcomeRoute),
              accountDeleted: () => context.go(RoutesPaths.welcomeRoute),
              failed: (errorMessage) {
                LoadingDialog.hide(context);
                Helper.instance.messageHelper
                    .showErrorMessage(context: context, message: errorMessage);
              }, orElse: () {

              });
        },
        builder: (context, state) => ScreenContainer(
          padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height*0.15, right: AppSizeW.s15, left: AppSizeW.s15),
          child:  Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Center(
                      child: AvatarSection()),
                  CustomTextFieldWithUpperLabel(
                    label: LocaleKeys.profile_firstName,
                    validator: Validator.nameValidation,
                    controller: firstNameController,
                  ),
                  CustomTextFieldWithUpperLabel(
                    label: LocaleKeys.profile_lastName,
                    validator: Validator.nameValidation,
                    controller: lastNameController,
                  ),
                  SizedBox(height: AppSizeH.s10),
                  BlocBuilder<ProfileEnumBloc,ProfileEnumState>(
                    buildWhen: (previous, current) => current.maybeWhen(cityLoaded: (cities) => true,orElse: () => false),
                    builder: (context,enumState) {
                      return BlocBuilder<ProfileBloc, ProfileState>(
                          buildWhen: (previous, current) {
                            return current.maybeWhen(
                              loading: () => false,
                              failed: (errorMessage) => false,
                              initial: () => false,
                              updateSuccessfully: (profileModel) => true,
                              getSuccess: (profileModel) => true,
                              orElse: () => false
                            );
                          }, builder: (context, state) {
                        return BesideDropDown<BasicModel>(
                          validator: Validator.validateDropdownValue,
                          label: LocaleKeys.profile_city.tr(),
                          value: userCity,
                          items: enumState.maybeWhen(cityLoaded: (cities) => cities,orElse:() => []),
                          stringConverter: (city) {
                            return city.name;
                          },
                          onChanged: (value) {
                            selectedCityId = value?.id ?? -1;
                          },
                        );
                      });
                    }
                  ),
                  CustomTextFieldWithUpperLabel(
                    label: LocaleKeys.profile_phoneNumber,
                    isLeftToRight: true,
                    readOnly: true,
                    controller: phoneNumberController,
                  ),
                  SizedBox(height: AppSizeH.s30),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: AppSizeH.s50,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<ProfileBloc>().add(
                                ProfileEvent.updateProfile(ProfileParameters(
                                    firstName: firstNameController.text,
                                    cityId: selectedCityId,
                                    lastName: lastNameController.text)));
                          }
                        },
                        child: Text(LocaleKeys.save.tr())),
                  ),
                  SizedBox(height: AppSizeH.s30),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: OutlinedButton(
                        style: Theme.of(context).errorTextButtonTheme.copyWith(
                            side: WidgetStatePropertyAll(BorderSide(
                                color: Theme.of(context).colorScheme.error))),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) => CustomAlertDialog(
                                  onConfirmPressed: () =>   context
                                      .read<ProfileBloc>()
                                      .add(const ProfileEvent.deleteAccount())));

                        },
                        child: Text(LocaleKeys.profile_delete_account.tr())),
                  ),
                  SizedBox(height: AppSizeH.s40)
                ]),
              ))
        ),
      ),
    );
  }
}
