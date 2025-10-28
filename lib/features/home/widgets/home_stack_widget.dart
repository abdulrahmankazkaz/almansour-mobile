import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';

class HomeStackWidget extends StatelessWidget {
  const HomeStackWidget(
      {super.key,
      required this.icon,
      this.title,
      this.body,
      required this.buttonText,
      this.onPressed
      });

  final String icon;
  final String? title;
  final String? body;
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,

      children: [
        Container(
          height: MediaQuery.sizeOf(context).height*0.15,
          decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              borderRadius: BorderRadius.circular(AppSizeR.s15)),
        ),
        Padding(
          padding:  EdgeInsets.all(AppSizeW.s8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
                SizedBox(height: AppSizeH.s10),
                Text(title!.tr(),textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: ColorManager.surface)),
              if(body != null)
              Text(
                body!.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: AppSizeH.s20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                // width: AppSizeW.s310,
                child: ElevatedButton(
                    style: Theme.of(context)
                        .secondaryElevatedButtonTheme
                        .copyWith(
                          padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                              horizontal: AppSizeW.s4, vertical: AppSizeH.s6)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSizeR.s50),
                            ),
                          ),
                        ),
                    onPressed: onPressed,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Spacer(),
                        Text(buttonText.tr(),style: Theme.of(context).textTheme.labelLarge),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.all(AppSizeW.s6),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.arrow_forward,color: Colors.white),
                        )
                      ],
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
