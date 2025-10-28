import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/core/utils/resources/values_manager.dart';
import 'package:mac_mobile/features/marketing/presentation/bloc/promotion_details_bloc/promotion_details_bloc.dart';
import 'package:mac_mobile/features/marketing/presentation/bloc/promotions_bloc/promotions_bloc.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../../core/utils/helpers/helper.dart';
import '../../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../../widgets/image_widgets/image_widget.dart';
import '../../widgets/media_slider_widget.dart';

class PromotionDetailsPage extends StatelessWidget {
  const PromotionDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PromotionDetailsView();
  }
}

class PromotionDetailsView extends StatefulWidget {
  const PromotionDetailsView({super.key});

  @override
  State<PromotionDetailsView> createState() => _PromotionDetailsViewState();
}

class _PromotionDetailsViewState extends State<PromotionDetailsView> {
  final String phoneNumber =
      getIt<AppPreferences>().userPreferences.getConfig?.phone ?? '';
  late int? id;

  @override
  void didChangeDependencies() {
    id = int.tryParse(GoRouterState.of(context).extra.toString());
    if (id != null) {
      context.read<PromotionsBloc>().add(PromotionsEvent.showPromotion(id!));
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text(LocaleKeys.home_specialOffer.tr())),
      body: BlocListener<PromotionsBloc, PromotionsState>(
        listener: (context, state) => state.maybeWhen(
          loaded: (promotions) {
            if (promotions.isNotEmpty) {
              context.read<PromotionDetailsBloc>().add(
                  PromotionDetailsEvent.setPromotionDetails(promotions[0]));
            } else {
              context.pop();
              Helper.instance.messageHelper.showErrorMessage(
                  context: context,
                  message: LocaleKeys.messages_offersNotFound.tr());
            }
            return null;
          },
          orElse: () {
            return;
          },
        ),
        child: ScreenContainer(
          padding: EdgeInsets.only(
              right: AppSizeW.s20,
              left: AppSizeW.s20,
              top: MediaQuery.sizeOf(context).height * 0.13),
          child: BlocBuilder<PromotionDetailsBloc, PromotionDetailsState>(
              builder: (context, state) {
            return state.maybeWhen(
                loaded: (promotion) => SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: AppSizeH.s40),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppSizeR.s15),
                              child: ImageWidget(
                                  width: MediaQuery.sizeOf(context).width,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.2,
                                  url: promotion.media.primaryImage[0],
                                  fit: BoxFit.fill),
                            ),
                            SizedBox(height: AppSizeH.s30),
                            Text(promotion.title,
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            SizedBox(height: AppSizeH.s20),
                            Text(promotion.description,
                                style: Theme.of(context).textTheme.bodyMedium),
                            SizedBox(height: AppSizeH.s30),
                            if (promotion.media.videos.length +
                                    promotion.media.images.length !=
                                0)
                              MediaSliderWidget(
                                media: promotion.media,
                                onImageTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          insetPadding: EdgeInsets.zero,
                                          surfaceTintColor: Colors.transparent,
                                          backgroundColor:
                                              Colors.black.withOpacity(0.5),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              PhotoViewGallery.builder(
                                                pageSnapping: true,
                                                backgroundDecoration:
                                                    BoxDecoration(color: ColorManager.black.withOpacity(0.5),),
                                                scrollPhysics: const BouncingScrollPhysics(),
                                                builder: (BuildContext context, int index) {
                                                  return PhotoViewGalleryPageOptions(
                                                      imageProvider:
                                                          NetworkImage(promotion.media.images[index]),
                                                      minScale: 0.3,
                                                      maxScale: 0.8);
                                                },
                                                itemCount: promotion.media.images.length,
                                              ),
                                              Padding(
                                                padding:  EdgeInsets.all(AppSizeW.s14),
                                                child: InkWell(
                                                  onTap: () => context.pop(),
                                                  child: Icon(Icons.cancel_outlined,size: AppSizeW.s28),
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      });
                                },
                              ),
                            SizedBox(height: AppSizeH.s60),
                            SizedBox(
                              height: AppSizeH.s60,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final call = Uri.parse('tel:$phoneNumber');
                                    if (await canLaunchUrl(call)) {
                                      launchUrl(call);
                                    } else {
                                      Helper.instance.messageHelper
                                          .showErrorMessage(
                                              context: context,
                                              message:
                                                  'Could not launch $call');
                                      // throw 'Could not launch $call';
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(LocaleKeys.callNow.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall
                                              ?.copyWith(
                                                  color: ColorManager.surface)),
                                      Row(
                                        children: [
                                          const Icon(Icons.call),
                                          SizedBox(width: AppSizeW.s10),
                                          Text(
                                              phoneNumber.isNotEmpty
                                                  ? phoneNumber
                                                  : '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall
                                                  ?.copyWith(
                                                      color:
                                                          ColorManager.surface))
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(height: AppSizeH.s20),
                          ]),
                    ),
                orElse: () => const SizedBox.shrink());
          }),
        ),
      ),
    );
  }
}
