import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';

import '../../core/utils/resources/resources.dart';
import '../../generated/assets.dart';
import '../loading_widgets/skeleton_card_loading.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      required this.url,
      this.defaultImage = Assets.imagesPlaceholder,
      this.placeHolder = Assets.imagesPlaceholder,
      this.width,
      this.height,
      this.fit = BoxFit.cover});

  final String? url;
  final String defaultImage;
  final String placeHolder;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return url?.isNotEmpty??false
        ? CachedNetworkImage(
            width: width,
            height: height,
            fit: fit,
            imageUrl: url!,
            useOldImageOnUrlChange: false,
            fadeInCurve: Curves.linear,
            fadeInDuration: const Duration(milliseconds: 500),
            placeholderFadeInDuration: const Duration(milliseconds: 500),
            placeholder: (context, url) =>  SkeletonCardLoading(height: height),
            //Todo replace with error image
            errorWidget: (context, url, error) {
             LoggerService().logDebug(message: error.toString());
              return ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizeR.s15),
                  child: Image.asset(placeHolder, fit: BoxFit.cover));
            })
        : ClipRRect(
            borderRadius: BorderRadius.circular(AppSizeR.s15),
            child: Image.asset(
              defaultImage,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ));
  }
}
