import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/survey/entities/survey_type_parameters.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../features/survey/presentation/bloc/survey_bloc.dart';
import '../../../../widgets/custom_containers/card_container.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/text_fields/custom_text_field.dart';
import '../widgets/experience_slider_section.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (context) => SurveyBloc(),
        child: const SurveyView());
  }
}


class SurveyView extends StatefulWidget {
   const SurveyView({super.key});

  @override
  State<SurveyView> createState() => _SurveyViewState();
}

class _SurveyViewState extends State<SurveyView> {
  final List<String> serviceType =[
    LocaleKeys.survey_sales.tr(),
    LocaleKeys.survey_serviceCenter.tr(),
    LocaleKeys.survey_cooperation.tr(),
    LocaleKeys.survey_customerCare.tr(),
  ];
  SurveyTypeParameters? surveyType;

  TextEditingController noteController = TextEditingController();


  @override
  void initState() {
      context.read<SurveyBloc>().add(const SurveyEvent.started());
      super.initState();
  }

  @override
  void didChangeDependencies() {
    surveyType = SurveyTypeParameters.fromJson(GoRouterState.of(context).extra as Map<String,dynamic>);
    if(surveyType?.modelId == null){
      context.read<SurveyBloc>().typeId = 1;
    }
    else{
      context.read<SurveyBloc>().typeId = surveyType?.typeId??-1;
      context.read<SurveyBloc>().modelId = surveyType?.modelId??-1;

    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
          title: Text(LocaleKeys.home_survey.tr())),
      body: BlocListener<SurveyBloc,SurveyState>(
        listener: (context, state) {
          state.maybeWhen(
              loading: () => LoadingDialog.show(context),
              failed: (failedMessage) {
                LoadingDialog.hide(context);
                Helper.instance.messageHelper.showErrorMessage(context: context,message: failedMessage);
              },
              sentSuccessfully: () {
                LoadingDialog.hide(context);
                Helper.instance.messageHelper.showToastMessage(
                    isSuccessToast: true, context: context, message: LocaleKeys.survey_thanks.tr());
                context.pop();
              },
              orElse: () {});
        },
        child:  SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: AppSizeH.s20),
                    CardContainer(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        children: [
                          Icon(Icons.star_rate_rounded,size: AppSizeW.s80,color: Color(0xFFFACC14)),
                          SizedBox(height: AppSizeH.s20),
                          Text(LocaleKeys.survey_rateExperience.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(color: ColorManager.secondaryColor)),
                          SizedBox(height: AppSizeH.s10),
                          Text(
                              LocaleKeys.survey_surveyDescription.tr(),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizeH.s20),
                    BlocBuilder<SurveyBloc,SurveyState>(
                      builder: (context,state) {
                        return CardContainer(
                            width: MediaQuery.sizeOf(context).width,
                            borderColor: state.maybeWhen(
                                notValidate: () => ColorManager.error,
                                orElse: () => Colors.transparent),
                            child: Column(
                              children: [
                                Text(LocaleKeys.survey_aboutExperienceQuestion.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(color: ColorManager.secondaryColor)),
                                EmojiRatingBar()
                              ],
                            ));
                      }
                    ),

                    // const ExperienceRateSliderSection(),
                    SizedBox(height: AppSizeH.s20),

                    CardContainer(
                        width: MediaQuery.sizeOf(context).width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(LocaleKeys.survey_serviceQualityQuestion.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(color: ColorManager.secondaryColor)),
                            SizedBox(height: AppSizeH.s10),
                            ...List.generate(
                                serviceType.length,
                                    (index) => Padding(
                                  padding: EdgeInsets.only(bottom: AppSizeH.s20),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(serviceType[index],
                                            style:
                                            Theme.of(context).textTheme.bodySmall),
                                        RatingBar.builder(
                                          itemSize: AppSizeW.s30,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          itemCount: 5,
                                          // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                          itemBuilder: (context, _) => const SizedBox(
                                            child: Icon(
                                              Icons.star_rounded,
                                              color: Color(0xFFFFC751),
                                            ),
                                          ),
                                          onRatingUpdate: (rating) {
                                            switch (index) {
                                              case 0:
                                                {
                                                  context.read<SurveyBloc>().salesRate = rating.toInt();
                                                }
                                              case 1:
                                                {
                                                  context.read<SurveyBloc>().serviceCenterRate = rating.toInt();
                                                }
                                              case 2:
                                                {
                                                  context.read<SurveyBloc>().cooperationRate = rating.toInt();
                                                }
                                              case 3:
                                                {
                                                  context.read<SurveyBloc>().customerCareRate = rating.toInt();
                                                }
                                            }
                                          },
                                        )
                                      ]),
                                )),
                          ],
                        )),
                    SizedBox(height: AppSizeH.s20),
                    CardContainer(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(LocaleKeys.survey_shareYourOpinion.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(color: ColorManager.secondaryColor)),
                          SizedBox(height: AppSizeH.s20),
                          CustomTextField(
                              textEditingController: noteController,
                              inputBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(AppSizeR.s15),
                                  borderSide: const BorderSide(
                                      color: ColorManager.secondaryColor)),
                              contentPadding: EdgeInsets.all(AppSizeW.s24),
                              textInputType: TextInputType.multiline,
                              maxLines: 5,
                              maxLength: 500,
                              hint: LocaleKeys.onlineBooking_writeHere,
                              isTextArea: true),
                        ],
                      ),
                    ),

                    SizedBox(height: AppSizeH.s20),
                    Center(
                        child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: AppSizeH.s50,
                            child: ElevatedButton(
                                onPressed: () {
                                  context.read<SurveyBloc>().add(SurveyEvent.send(noteController.text));
                                }, child: Text(LocaleKeys.send.tr())))),
                    SizedBox(height: AppSizeH.s40),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}







