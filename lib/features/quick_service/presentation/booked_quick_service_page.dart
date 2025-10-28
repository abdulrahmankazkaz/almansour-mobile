import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/quick_service/presentation/bloc/quick_service_bloc/quick_service_bloc.dart';

import '../../../core/router/routes_manager.dart';
import '../../../core/utils/helpers/helper.dart';
import '../../../core/utils/resources/values_manager.dart';
import '../../../generated/assets.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../widgets/empty_widgets/empty_lottie_widget.dart';
import '../../../widgets/loading_widgets/small_circular_progress_indicator.dart';
import '../../cart/entities/enum/order_type_enum.dart';
import '../../home/widgets/my_orders_page.dart';
import '../../survey/entities/survey_type_parameters.dart';



class BookedQuickServiceView extends StatelessWidget {
  const BookedQuickServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => QuickServiceBloc()),
      ],
      child: BookedQuickServicePage(),
    );
  }
}

class BookedQuickServicePage extends StatefulWidget {
  const BookedQuickServicePage({super.key});

  @override
  State<BookedQuickServicePage> createState() => _BookedQuickServicePageState();
}



class _BookedQuickServicePageState extends State<BookedQuickServicePage> {



  @override
  void initState() {
    context.read<QuickServiceBloc>().add(QuickServiceEvent.get());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuickServiceBloc,QuickServiceState>(
      buildWhen: (previous, current) => current.maybeWhen(
          fetchLoading: () => true,
          loaded: (_) => true,
          empty: () => true,
          orElse: () => false),
      builder: (context,state) {
       return state.maybeWhen(
         fetchLoading: () => const SmallCircularIndicator(),
         loaded: (quickServices) =>RefreshIndicator(
           backgroundColor: Theme.of(context).cardColor,
           onRefresh: () async => context.read<QuickServiceBloc>().add(const QuickServiceEvent.get()),
           child: ListView.separated(
               physics: const AlwaysScrollableScrollPhysics(),
               padding: EdgeInsets.all(AppSizeW.s20),
               itemBuilder: (context, index) {
                 if(index < quickServices.length) {
                   return OrderDetailsWidget(
                     orderType: OrderType.quickService,
                     orderId: quickServices[index].id.toString(),
                     name: LocaleKeys.quickService_quickService.tr(),
                     status: quickServices[index].status,
                     price: '',
                     onRateTap: quickServices[index].status.id == 2 &&
                         !quickServices[index].isRated
                         ? () {
                       SurveyTypeParameters param =
                       SurveyTypeParameters(
                           typeId: 5,
                           modelId: quickServices[index].id);
                       context
                           .push(RoutesPaths.survey,
                           extra: param.toJson())
                           .then((value) => context.read<QuickServiceBloc>().add(const QuickServiceEvent.get()));
                     }
                         : null,
                     bookDate: Helper.instance.dateHelper.formatDate(quickServices[index].bookDate),
                     onTap: () => context.push(RoutesPaths.quickServiceBookDetails, extra:quickServices[index]),
                   );
                 }
                 return null;
               },
               separatorBuilder: (context, index) => SizedBox(height: AppSizeH.s20),
               itemCount: quickServices.length+1),

         ),
         empty: () => EmptyLottieWidget(
           title: LocaleKeys.emptyTitle.tr(),
           description: LocaleKeys.emptyDescription.tr(),
           lottie: Assets.lottieEmpty,
         ),
         orElse: () => SizedBox.shrink(),);
      }
    );
  }
}
