import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/core/utils/resources/values_manager.dart';
import 'package:mac_mobile/features/installment/entities/installment_requirement/installment_requirement.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';
import 'package:mac_mobile/widgets/image_widgets/image_widget.dart';
import 'package:mac_mobile/widgets/loading_widgets/small_circular_progress_indicator.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../bloc/installment_bloc/installment_bloc.dart';
import '../widgets/border_label_widget.dart';
import '../widgets/label_widget.dart';
import '../widgets/point_text_widget.dart';

class RequiredDocumentsPage extends StatelessWidget {
  const RequiredDocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RequiredDocumentsView();
  }
}

class RequiredDocumentsView extends StatefulWidget {
  const RequiredDocumentsView({super.key});

  @override
  State<RequiredDocumentsView> createState() => _RequiredDocumentsViewState();
}

class _RequiredDocumentsViewState extends State<RequiredDocumentsView> {
  @override
  void initState() {
    context
        .read<InstallmentBloc>()
        .add(const InstallmentEvent.getRequiredDocuments());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(LocaleKeys.installment_requiredDocument.tr()),
          titleTextStyle: Theme.of(context).textTheme.headlineLarge,
          centerTitle: true,
          forceMaterialTransparency: true,
        ),
        body: ScreenContainer(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.15,
                bottom: AppSizeH.s40,
                left: AppSizeW.s20,
                right: AppSizeW.s20),
            child: BlocBuilder<InstallmentBloc, InstallmentState>(
              builder: (context, state) {
                return state.maybeWhen(
                    loading: () => const SmallCircularIndicator(),
                    requiredDocumentsLoaded: (requiredDocuments) =>
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ...List.generate(
                                  requiredDocuments.length,
                                  (index) => RequiredDocumentWidget(requiredDocument: requiredDocuments[index])),
                            ],
                          ),
                        ),
                    orElse: () => const SizedBox.shrink());
              },
            )));
  }
}

class RequiredDocumentWidget extends StatelessWidget {
  final InstallmentRequirement requiredDocument;

  const RequiredDocumentWidget({
    required this.requiredDocument,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (requiredDocument.icon?.isNotEmpty ?? false)
          ImageWidget(url: requiredDocument.icon, height: AppSizeH.s50,width: AppSizeW.s50),
        SizedBox(height: AppSizeH.s14),
        LabelWidget(label: requiredDocument.title),
        SizedBox(height: AppSizeH.s14),
        if (requiredDocument.requirements.isNotEmpty)
          ...List.generate(
              requiredDocument.requirements.length,
              (pointIndex) => PointText(text: requiredDocument.requirements[pointIndex])),
        if (requiredDocument.subRequirements.isNotEmpty)
          ...List.generate(
              requiredDocument.subRequirements.length,
              (subRequirementIndex) => Column(children: [
                    BorderLabelWidget(
                        label: requiredDocument
                            .subRequirements[subRequirementIndex].title),
                    ...List.generate(
                        requiredDocument.subRequirements[subRequirementIndex]
                            .requirements.length,
                        (subRequirementPoint) => PointText(
                            text: requiredDocument
                                .subRequirements[subRequirementIndex]
                                .requirements[subRequirementPoint])),
                    if(requiredDocument.subRequirements[subRequirementIndex].subRequirements.isNotEmpty)
                      RequiredDocumentWidget(requiredDocument: requiredDocument.subRequirements[subRequirementIndex])
                  ])),
      ],
    );
  }
}
