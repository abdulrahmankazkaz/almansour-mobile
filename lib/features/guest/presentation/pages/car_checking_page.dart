import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/helpers/helper.dart';
import 'package:mac_mobile/core/utils/resources/validator.dart';
import 'package:mac_mobile/features/guest/presentation/bloc/car_checking_bloc.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';
import 'package:mac_mobile/widgets/loading_widgets/willpop_scope_loading.dart';
import 'package:mac_mobile/widgets/text_fields/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';

class CarCheckingPage extends StatefulWidget {
  const CarCheckingPage({super.key});

  @override
  State<CarCheckingPage> createState() => _CarCheckingPageState();
}

class _CarCheckingPageState extends State<CarCheckingPage> {
  TextEditingController vinNumberController = TextEditingController();
  final String phoneNumber =
      getIt<AppPreferences>().userPreferences.getConfig?.phone ?? '';

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(LocaleKeys.guest_vinChecking.tr()),
          titleTextStyle: Theme.of(context).textTheme.headlineLarge),
      body: BlocListener<CarCheckingBloc, CarCheckingState>(
        listener: (context, state) {
          state.maybeWhen(
              loading: () => LoadingDialog.show(context),
              failed: (errorMessage) {
                LoadingDialog.hide(context);
                Helper.instance.messageHelper
                    .showErrorMessage(context: context, message: errorMessage);
              },
              success: (carCheckedResult) => context.go(
                  RoutesPaths.checkingResult,
                  extra: carCheckedResult.status),
              orElse: () {});
        },
        child: ScreenContainer(
          padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.15,
              left: AppSizeW.s20,
              right: AppSizeW.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(LocaleKeys.guest_enterVIN.tr(),
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: AppSizeH.s20),
              Form(
                  key: _formKey,
                  child: CustomTextField(
                    textEditingController: vinNumberController,
                    validator: Validator.vinValidation,
                  )),
              const Spacer(flex: 6),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: AppSizeH.s50,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<CarCheckingBloc>().add(
                            CarCheckingEvent.checkCar(
                                vinNumberController.text));
                      }
                    },
                    child: Text(LocaleKeys.check.tr())),
              ),
              SizedBox(height: AppSizeH.s20),
              SizedBox(
                  height: AppSizeH.s50,

                  width: MediaQuery.sizeOf(context).width,
                  child: ElevatedButton(
                      onPressed: () async {
                        final call = Uri.parse('tel:$phoneNumber');
                        if (await canLaunchUrl(call)) {
                          launchUrl(call);
                        } else {
                          Helper.instance.messageHelper.showErrorMessage(
                              context: context,
                              message: 'Could not launch $call');
                          // throw 'Could not launch $call';
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(LocaleKeys.callUs.tr()
                          ),
                          Row(
                            children: [
                              const Icon(Icons.call),
                              SizedBox(width: AppSizeW.s10),
                              Text(phoneNumber.isNotEmpty ? phoneNumber : '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(color: ColorManager.surface))
                            ],
                          )
                        ],
                      ))),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
