import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer(
      {super.key,
      required this.icon,
      this.onTap,
      this.width,
        this.height,
        this.padding,
        this.withBackground = true,
      required this.title});
  final String icon;
  final String title;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final void Function()? onTap;
  final bool withBackground;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            // border: Border.all(color: ColorManager.secondaryColor),
            borderRadius: BorderRadius.circular(AppSizeR.s15),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).shadowColor.withValues(alpha: 0.1),
                spreadRadius: 3,
                blurRadius: 3
              )
            ],
            color: Theme.of(context).cardColor),
            // gradient: withBackground?  LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [Theme.of(context).cardColor,Theme.of(context).canvasColor]):null),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset(icon,height: AppSizeH.s55),
            Image.asset(icon,height: AppSizeH.s88),
            SizedBox(height: AppSizeH.s5),
            Text(title.tr(), style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600
            ))
          ],
        ),
      ),
    );
  }
}
