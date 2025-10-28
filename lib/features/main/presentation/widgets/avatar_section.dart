import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/color_manager.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/values_manager.dart';
import '../../../../widgets/custom_containers/basic_container.dart';
import '../../../profile/entities/user.dart';

class AvatarSection extends StatefulWidget {
  final bool isPrimaryColor;

  const AvatarSection({this.isPrimaryColor = false, super.key});

  @override
  State<AvatarSection> createState() => _AvatarSectionState();
}

class _AvatarSectionState extends State<AvatarSection> {
  User? user = getIt<AppPreferences>().userPreferences.getUserData;

  @override
  void initState() {
    GoRouter.of(context).routerDelegate.addListener(checkUserData);
    GoRouter.of(context).routeInformationProvider.addListener(checkUserData);
    super.initState();
  }

  checkUserData() {
    if (mounted) {
      setState(() {
        user = getIt<AppPreferences>().userPreferences.getUserData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      key: ValueKey(user),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(AppSizeW.s5),
          width: AppSizeW.s120,
          height: AppSizeW.s120,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
            color: ColorManager.primaryColor
              ),
          child: Center(
            child: (user?.fullName.trim().isEmpty ?? true)
                ? Icon(
              Icons.person,
              size: 70.sp,
              color: Theme.of(context).primaryColor,
            )
                : Text(
                Helper.instance.functionsHelper
                    .getFirstLettersWithSpace(user?.fullName ?? '')
                    .toUpperCase(),
                style: Theme.of(context)
                    .primaryTextTheme
                    .displaySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w700)),
          ),
        ),
        SizedBox(height: AppSizeH.s10),
        Text(
          user?.fullName ?? '',
          style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
              fontSize: 25.sp,
              color: widget.isPrimaryColor
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).textTheme.bodyLarge?.color),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
