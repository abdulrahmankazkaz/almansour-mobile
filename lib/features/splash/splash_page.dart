import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/main/entities/config_entity/config_entity.dart';
import 'package:mac_mobile/features/main/entities/currency_entity/currency_entity.dart';
import 'package:video_player/video_player.dart';

import '../../app/dependency_injection.dart';
import '../../core/router/routes_manager.dart';
import '../../core/utils/helpers/logger_helper.dart';
import '../../core/utils/local_storage/app_preferences.dart';
import '../../generated/assets.dart';
import '../main/presentation/bloc/main_bloc/main_bloc.dart';
import '../profile/presentation/bloc/profile_bloc/profile_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late VideoPlayerController _controller;
  bool _visible = false;
  bool _newVersion = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // context.read<MainBloc>().add(const MainEvent.getConfig());
    getIt<AppPreferences>().userPreferences.setConfig(ConfigEntity(
    currency: CurrencyEntity(en: 'IQD', ar: 'دينار'), email: 'infoiraq@maciraq.com', phone: '6424'));

    if (getIt<AppPreferences>().userPreferences.isUserLoggedIn()) {
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    }

    // Initialize the video player inside a try-catch block to catch codec errors
    _initializeVideoPlayer();

    // Automatically navigate after a delay
    Future.delayed(const Duration(seconds: 7), () async {
      if (mounted && !_newVersion) {
        context.go(RoutesPaths.welcomeRoute);
      }
         });
  }

  Future<void> _initializeVideoPlayer() async {
    try {
      _controller = VideoPlayerController.asset(Assets.videoSplashVideo);
      _controller.setVolume(0);
      await _controller.initialize();
      if (mounted) {
        setState(() {
          _controller.setLooping(false);
          _controller.play();
          _visible = true;
        });
      }
    } catch (e) {
      LoggerService().logCatchDebug(message: 'Video initialization error: $e');
      if (mounted) {
        context.go(RoutesPaths.welcomeRoute);
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _getVideoBackground() {
    return AspectRatio(
      aspectRatio: _controller.value.size.aspectRatio != 0
          ? _controller.value.size.aspectRatio
          : 1,
      child: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        child: VideoPlayer(_controller),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<MainBloc, MainState>(
        listener: (context, state) => state.maybeWhen(
          failed: (errorMessage) {
            _controller.pause();
            if (errorMessage == 'There is a new version in store!') {
              _newVersion = true;
            }
          },
          orElse: () {},
        ),
        child: SizedBox.expand(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: SizedBox(
              width: _controller.value.size.width,
              height: _controller.value.size.height,
              child: _getVideoBackground(),
            ),
          ),
        ),
      ),
    );
  }
}
