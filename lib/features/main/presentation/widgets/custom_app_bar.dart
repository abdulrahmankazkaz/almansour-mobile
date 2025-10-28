import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded)),
      ],
      titleTextStyle: Theme.of(context).textTheme.bodyLarge,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
