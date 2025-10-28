import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/widgets/custom_divider/screen_divider.dart';
import 'package:mac_mobile/widgets/empty_widgets/empty_lottie_widget.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/helpers/logger_helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/loading_widgets/skeleton_list_loading.dart';
import '../bloc/notification_bloc.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NotificationBloc(),
        child: const NotificationView());
  }
}

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    context.read<NotificationBloc>().add(const NotificationEvent.get(true));
    _scrollController = ScrollController()
      ..addListener(() {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        if (maxScroll - currentScroll < 15) {
          context
              .read<NotificationBloc>()
              .add(const NotificationEvent.get(false));
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationBloc, NotificationState>(
        listener: (context, state) {
          LoggerService().logCatchDebug(message: state.toString());
          state.maybeWhen(
              failed: (errorMessage) => Helper.instance.messageHelper
                  .showErrorMessage(context: context, message: errorMessage),
              orElse: () {
                return null;
              });
        },
        buildWhen: (prev, curr) => curr.maybeWhen(
            loading: () => true, loaded: (_, __) => true, orElse: () => false),
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(title: Text(LocaleKeys.main_notifications.tr())),
              body: Container(
                child: state.maybeWhen(
                    loading: () => Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                        child: SkeletonListLoading(
                            height: MediaQuery.sizeOf(context).height * 0.14)),
                    loaded: (notifications, hasReachMax) {
                      if (notifications.isEmpty) {
                        return EmptyLottieWidget(
                          title: LocaleKeys.main_emptyNotificationDescription.tr(),
                            lottie: Assets.lottieEmptyNotification);
                      } else {
                        return RefreshIndicator(
                          backgroundColor: Theme.of(context).cardColor,
                          onRefresh: () async => context
                              .read<NotificationBloc>()
                              .add(const NotificationEvent.get(true)),
                          child: ListView.separated(
                              physics: const AlwaysScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  vertical: AppSizeH.s8,
                                  horizontal: AppSizeW.s20),
                              controller: _scrollController,
                              itemCount: hasReachMax
                                  ? notifications.length
                                  : notifications.length + 1,
                              separatorBuilder: (context, index) =>
                                  const CustomDivider(
                                      color: ColorManager.softGrey),
                              itemBuilder: (context, index) => index <
                                      notifications.length
                                  ? InkWell(
                                      onTap: () => showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                              contentPadding:
                                                  EdgeInsets.all(AppSizeW.s18),
                                              scrollable: true,
                                              insetPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: AppSizeH.s100,
                                                      horizontal: AppSizeW.s30),
                                              content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Icon(Icons.notifications,
                                                        size: AppSizeW.s40),
                                                    SizedBox(
                                                        height: AppSizeH.s10),
                                                    Text(
                                                        notifications[index]
                                                            .body
                                                            .title,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headlineMedium
                                                            ?.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                    SizedBox(
                                                        height: AppSizeH.s20),
                                                    Text(
                                                        notifications[index]
                                                            .body
                                                            .message
                                                            .replaceAll(
                                                                '  ', ''),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleMedium
                                                            ?.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300)),
                                                    SizedBox(
                                                        height: AppSizeH.s20),
                                                    ElevatedButton(
                                                        onPressed: () =>
                                                            context.pop(),
                                                        child: Text(
                                                            LocaleKeys.ok.tr()))
                                                  ]))),
                                      child: Padding(
                                          padding: EdgeInsets.all(AppSizeW.s5),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.9,
                                                    child: Text(
                                                        notifications[index]
                                                            .body
                                                            .title,
                                                        softWrap: true,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headlineMedium
                                                            ?.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))),
                                                SizedBox(height: AppSizeH.s5),
                                                Row(
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                          notifications[index]
                                                              .body
                                                              .message
                                                              .replaceAll(
                                                                  "\n", " "),
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .titleMedium
                                                              ?.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300)),
                                                    ),
                                                    Text(
                                                        LocaleKeys
                                                            .readMoreNotification
                                                            .tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelMedium
                                                            ?.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                  ],
                                                ),
                                                SizedBox(height: AppSizeH.s5),
                                                Text(
                                                    Helper.instance.dateHelper
                                                        .formatDate(
                                                            notifications[index]
                                                                .date),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall
                                                        ?.copyWith(
                                                            color: ColorManager
                                                                .softGrey)),
                                              ])),
                                    )
                                  : Container(
                                      margin: EdgeInsets.all(AppSizeH.s4),
                                      width: AppSizeW.s32,
                                      height: AppSizeW.s32,
                                      child: const Center(
                                          child: CircularProgressIndicator()))),
                        );
                      }
                    },
                    orElse: () => const SizedBox.shrink()),
              ));
        });
  }
}
