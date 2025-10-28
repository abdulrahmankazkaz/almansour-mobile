import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/features/auth/presentation/bloc/auth_bloc.dart';

import '../../../../generated/locale_keys.g.dart';

class TimerWidget extends StatefulWidget {
  final int remainingTime;

  const TimerWidget({super.key, required this.remainingTime});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late Timer _timer;
  int _currentRemainingTime = 0;
  bool isTimerRunning = false;

  @override
  void initState() {
    super.initState();
    _currentRemainingTime = widget.remainingTime;
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    isTimerRunning = true;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_currentRemainingTime < 1) {
          isTimerRunning = false;
          _timer.cancel();
        } else {
          _currentRemainingTime--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Text(
          '${LocaleKeys.auth_resendCodeIn.tr()} $_currentRemainingTime ${LocaleKeys.auth_seconds.tr()}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        );
  }
}
