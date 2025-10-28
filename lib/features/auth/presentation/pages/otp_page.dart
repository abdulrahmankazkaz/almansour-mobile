import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/widgets/custom_containers/scroll_screen_container.dart';
import 'package:mac_mobile/widgets/loading_widgets/willpop_scope_loading.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/code_section.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => AuthBloc(), child: const OTPView());
  }
}

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
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
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
        ),
        body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  LoadingDialog.show(context);
                },
                loggedInSuccess: () {},
                verifySuccess: (user) {
                  LoadingDialog.hide(context);
                  if (user.userStatus?.id == 2) {
                    context.go(RoutesPaths.completeProfileRoute);
                  } else if (user.customerCar == null) {
                    context.go(RoutesPaths.addCarRoute);
                  } else {
                    context.go(RoutesPaths.homeRoute);
                  }
                },
                resendOTPSuccess: () {
                  LoadingDialog.hide(context);
                },
                logoutSuccess: () {},
                failed: (errorMessage) {
                  LoadingDialog.hide(context);
                  Helper.instance.messageHelper.showErrorMessage(
                      context: context, message: errorMessage);
                },
              );
            },
            child: ScrollScreenContainer(
                padding: EdgeInsets.only(
                    top: AppSizeH.s100,
                    right: AppSizeW.s26,
                    left: AppSizeW.s26),
                children: [
                  SizedBox(width: 166.w, child: Lottie.asset(Assets.lottieOTP)),
                  SizedBox(height: 24.h),
                  Text(LocaleKeys.auth_verification.tr(),
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headlineLarge
                          ?.copyWith(fontSize: 30.sp)),
                  SizedBox(height: 8.h),
                  SizedBox(
                      width: AppSizeW.s300,
                      child: Text(
                        LocaleKeys.auth_verificationCodeSentMessage.tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w300),
                      )),
                  SizedBox(height: 34.h),
                  SizedBox(
                      height: ScreenUtil().screenHeight * 0.5,
                      child: const CodeSection()),
                ])));
  }
}
