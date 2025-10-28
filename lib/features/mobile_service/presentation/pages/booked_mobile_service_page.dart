import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/features/car/presentation/widgets/empty_cars_widget.dart';
import 'package:mac_mobile/features/cart/entities/enum/order_type_enum.dart';
import 'package:mac_mobile/features/home/widgets/my_orders_page.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';
import 'package:mac_mobile/widgets/custom_divider/screen_divider.dart';
import 'package:mac_mobile/widgets/loading_widgets/small_circular_progress_indicator.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../generated/assets.dart';
import '../../../../widgets/empty_widgets/empty_lottie_widget.dart';
import '../../../survey/entities/survey_type_parameters.dart';
import '../bloc/mobile_service_bloc/mobile_service_bloc.dart';

class BookedMobileServicePage extends StatelessWidget {
  const BookedMobileServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookedMobileServiceView();
  }
}

class BookedMobileServiceView extends StatefulWidget {
  const BookedMobileServiceView({super.key});

  @override
  State<BookedMobileServiceView> createState() =>
      _BookedMobileServiceViewState();
}

class _BookedMobileServiceViewState extends State<BookedMobileServiceView> {
  @override
  void initState() {
    context.read<MobileServiceBloc>().add(const MobileServiceEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MobileServiceBloc, MobileServiceState>(
        builder: (context, state) => state.maybeWhen(
            fetchLoading: () => const SmallCircularIndicator(),
            empty: () => EmptyLottieWidget(
              title: LocaleKeys.emptyTitle.tr(),
              description: LocaleKeys.emptyDescription.tr(),
              lottie: Assets.lottieEmpty,
            ),
            loaded: (mobileServices) => RefreshIndicator(
              backgroundColor: Theme.of(context).cardColor,
              onRefresh: () async => context.read<MobileServiceBloc>().add(const MobileServiceEvent.get()),
              child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.all(AppSizeW.s20),
                  itemBuilder: (context, index) {
                    if(index < mobileServices.length) {
                      return OrderDetailsWidget(
                        orderType: OrderType.mobileService,
                          orderId: mobileServices[index].id.toString(),
                          name: LocaleKeys.mobileService_mobileService.tr(),
                          status: mobileServices[index].status,
                          price: '',
                        onRateTap: mobileServices[index].status.id == 2 &&
                            !mobileServices[index].isRated
                            ? () {
                          SurveyTypeParameters param =
                          SurveyTypeParameters(
                              typeId: 4,
                              modelId: mobileServices[index].id);
                              context
                            .push(RoutesPaths.survey,
                            extra: param.toJson())
                            .then((value) => context.read<MobileServiceBloc>().add(const MobileServiceEvent.get()));
                            }
                            : null,
                          bookDate: Helper.instance.dateHelper.formatDate(mobileServices[index].bookDate),
                          onTap: () => context.push(RoutesPaths.mobileServiceBookDetails, extra:mobileServices[index]),
                      );
                    }
                    return null;
                  },
                  separatorBuilder: (context, index) => SizedBox(height: AppSizeH.s20),
                  itemCount: mobileServices.length+1),

            ),
            orElse: () => const SizedBox.shrink()));
  }
}
