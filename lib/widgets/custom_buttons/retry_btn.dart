import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';

class RetryBtn extends StatefulWidget {
  final Function() onTap;

  const RetryBtn({super.key, required this.onTap});

  @override
  State<RetryBtn> createState() => _RetryBtnState();
}

class _RetryBtnState extends State<RetryBtn> {
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        onPressed: widget.onTap, child: const Icon(Icons.refresh_rounded));
  }
}
