import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';

class CatalogSection extends StatefulWidget {
  const CatalogSection(
      {super.key, required this.catalogLink, required this.virtualCatalogLink});

  final String catalogLink;
  final String virtualCatalogLink;

  @override
  State<CatalogSection> createState() => _CatalogSectionState();
}

class _CatalogSectionState extends State<CatalogSection> {
  final List<Map<String, dynamic>> catalogContent = [
    {
      'icon': Assets.iconsCatalog,
      'title': LocaleKeys.car_details_catalog,
      'onTap': () {},
    },
    {
      'icon': Assets.lottie360View,
      'title': LocaleKeys.car_details_view360,
      'onTap': () {},
    },
  ];

  @override
  void initState() {
    catalogContent[0]['onTap'] =
        () => Helper.instance.routerHelper.openLink(widget.catalogLink);
    catalogContent[1]['onTap'] =
        () => Helper.instance.routerHelper.openLink(widget.virtualCatalogLink);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
              catalogContent.length,
              (index) => InkWell(
                  onTap: catalogContent[index]['onTap'],
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: AppSizeH.s10,
                          left: AppSizeW.s15,
                          right: AppSizeW.s15),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorManager.secondaryColor),
                        borderRadius: BorderRadius.circular(AppSizeR.s15),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            index ==0? Padding(
                              padding: EdgeInsets.all(AppSizeW.s20),
                              child: SvgPicture.asset(catalogContent[index]['icon']),
                            ):
                            Lottie.asset(catalogContent[index]['icon'],
                                height: AppSizeH.s80),
                            Text(
                                (catalogContent[index]['title'].toString())
                                    .tr(),
                                style: Theme.of(context).textTheme.bodySmall)
                          ]))))
        ],
      ),
    );
  }
}
