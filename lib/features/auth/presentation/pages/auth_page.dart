import 'dart:io';
import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/constants/constant.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/utils/resources/validator.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/dialog/confirm_exit_dialog.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../../widgets/text_fields/custom_text_field.dart';
import '../bloc/auth_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => AuthBloc(), child: const AuthView());
  }
}

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController numberController = TextEditingController();
  ValueNotifier<bool> isTermAccepted = ValueNotifier(false);

  Future<bool> _onExitConfirmation() async {
    return await showDialog(
      context: context,
      builder: (context) => ConfirmExitDialog(),
    ) ??
        false;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop) {
          bool shouldExit = await _onExitConfirmation();
          if (shouldExit) {
            exit(0);
          }
        }
      },
      child: Scaffold(
          body: BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
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
              },
              child: ScreenContainer(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(children: [
                        const Spacer(flex: 2),
                        Center(
                            child: Image.asset(Assets.imagesMansourLogo,
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                fit: BoxFit.fitWidth)),
                        const Spacer(),
                        Form(
                            key: _formKey,
                            child: Column(children: [
                              Text(LocaleKeys.auth_login.tr(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(fontSize: 30.sp)),
                              SizedBox(height: 50.h),
                              Directionality(
                                  textDirection: ui.TextDirection.ltr,
                                  child: CustomTextField(
                                      textInputType: TextInputType.number,
                                      prefixIcon: Padding(
                                          padding:
                                              EdgeInsets.only(left: AppSizeW.s12),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Text(Constants.countryCode),
                                                SizedBox(
                                                    height: AppSizeH.s30,
                                                    child: VerticalDivider(
                                                        color: Theme.of(context)
                                                            .dividerColor))
                                              ])),
                                      hint:
                                          ' ${LocaleKeys.auth_phoneNumber.tr()}',
                                      textEditingController: numberController,
                                      validator: Validator.phoneValidation)),
                              SizedBox(height: 28.h),
                              Row(children: [
                                AnimatedBuilder(
                                    animation: isTermAccepted,
                                    builder: (context, child) {
                                      return Checkbox(
                                          visualDensity: const VisualDensity(
                                              vertical:
                                                  VisualDensity.minimumDensity,
                                              horizontal:
                                                  VisualDensity.minimumDensity),
                                          value: isTermAccepted.value,
                                          onChanged: (value) {
                                            isTermAccepted.value = value!;
                                          });
                                    }),
                                Row(children: [
                                  Text('${LocaleKeys.auth_agreeTo.tr()} ',
                                      style:
                                          Theme.of(context).textTheme.bodyMedium),
                                  InkWell(
                                    onTap: () => Helper.instance.routerHelper
                                        .openLink(context.locale ==
                                                AppLanguage.english.local()
                                            ? Constants.englishTermsUrl
                                            : Constants.arabicTermsUrl),
                                    child: Text(
                                        LocaleKeys.main_termsAndConditions.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                  )
                                ])
                              ]),
                              SizedBox(height: 10.h),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: AppSizeH.s55,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          if (isTermAccepted.value) {
                                            context.read<AuthBloc>().add(
                                                AuthEvent.login(
                                                    '${Constants.countryCode}${numberController.text}'));

                                          } else {
                                            FocusScope.of(context).unfocus();
                                            Helper.instance.messageHelper
                                                .showToastMessage(
                                                    context: context,
                                                    message: LocaleKeys
                                                        .messages_agreeTerms
                                                        .tr());
                                          }
                                        }
                                      },
                                      child: Row(children: [
                                        const Spacer(),
                                        Text(LocaleKeys.auth_login.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                    color: ColorManager.surface)),
                                        const Spacer(),
                                        const Icon(Icons.arrow_forward_rounded),
                                      ]))),
                              SizedBox(height: 28.h),
                              Text(LocaleKeys.or.tr(), style: Theme.of(context).textTheme.bodyMedium),
                              SizedBox(height: 14.h),
                              InkWell(
                                onTap: () async {
                                  await getIt<AppPreferences>()
                                      .userPreferences
                                      .setUserAsVisitor();
                                  context.go(RoutesPaths.brandsRoute);
                                },
                                child: Text(
                                    LocaleKeys.auth_continueAsVisitor.tr(),
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyLarge),
                              )
                            ])),
                        const Spacer(flex: 2),
                      ]))))),
    );
  }
}
