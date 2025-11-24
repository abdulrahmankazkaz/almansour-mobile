import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/helpers/helper.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mac_mobile/features/main/presentation/widgets/custom_nav_bar.dart';
import 'package:mac_mobile/widgets/loading_widgets/willpop_scope_loading.dart';

import '../../../core/utils/services/firebase_messaging.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../widgets/dialog/confirm_exit_dialog.dart';
import '../../spare_parts/presentation/bloc/spare_parts_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({this.child, super.key});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AuthBloc()),
        ],
        child: MainView(
          child: child,
        ));
  }
}

class MainView extends StatefulWidget {
  const MainView({this.child, super.key});

  final Widget? child;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getInitialMessage().then(
      (remoteMessage) {
        // print('Initial message');
        // print('rootNavigatorKey.currentContext = ${rootNavigatorKey.currentContext}');
        if (remoteMessage != null) {
          NotificationService().handleNotificationTap(remoteMessage.data);
        }
      },
    );
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
        extendBodyBehindAppBar: true,
        // extendBody: true,
        // drawer: CustomDrawer(),
        // backgroundColor: ColorManager.primaryColorDark,
        bottomNavigationBar: const CustomNavBar(),
        body: MultiBlocListener(listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(logoutSuccess: () {
                LoadingDialog.hide(context);
                context.read<SparePartsBloc>().spareParts.clear();
                context.go(RoutesPaths.welcomeRoute);
              });
              state.whenOrNull(failed: (errorMessage) {
                LoadingDialog.hide(context);
                Helper.instance.messageHelper
                    .showErrorMessage(context: context, message: errorMessage);
              });
              state.whenOrNull(loading: () => LoadingDialog.show(context));
            },
          ),
        ], child: widget.child!),
      ),
    );
  }

  Future<bool> _onExitConfirmation() async {
    return await showDialog(
      context: context,
      builder: (context) => ConfirmExitDialog(),
    ) ??
        false;
  }
}


