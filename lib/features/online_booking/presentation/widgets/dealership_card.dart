import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mac_mobile/widgets/image_widgets/image_widget.dart';

import '../../../../generated/assets.dart';

class DealershipCard extends StatelessWidget {
  const DealershipCard(
      {super.key,
      this.img,
      required this.title,
      this.onTap,
      this.isDealerShip = false});

  final String? img;
  final String title;
  final void Function()? onTap;
  final bool isDealerShip;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        height: MediaQuery.sizeOf(context).height * 0.1,
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 3)
            ],
            color: Theme.of(context).cardColor),
        child: Row(
          mainAxisAlignment: isDealerShip
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            ImageWidget(url: img, width: MediaQuery.sizeOf(context).width * 0.15),
            SizedBox(width: 20.w),
            Text(title.tr(), //LocaleKeys.mansour_baghdad.tr(),
                style: isDealerShip
                    ? Theme.of(context).textTheme.headlineLarge
                    : Theme.of(context)
                        .primaryTextTheme
                        .headlineLarge
                        ?.copyWith(fontSize: 20.sp))
          ],
        ),
      ),
    );
  }
}
