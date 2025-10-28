import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/dropdwon/custom_dropdown_with_container.dart';
import '../../../../widgets/image_widgets/image_widget.dart';
import '../../../car/presentation/widgets/colored_images_widget.dart';
import '../bloc/installment_bloc/installment_bloc.dart';

class InstallmentDetailsPage extends StatelessWidget {
  const InstallmentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InstallmentDetailsView();
  }
}

class InstallmentDetailsView extends StatefulWidget {
  const InstallmentDetailsView({super.key});

  @override
  State<InstallmentDetailsView> createState() => _InstallmentDetailsViewState();
}

class _InstallmentDetailsViewState extends State<InstallmentDetailsView> {
  final ValueNotifier<int> selectedInstallmentPeriod = ValueNotifier(0);

  final ValueNotifier<BasicModel> selectedDownPayment = ValueNotifier(const BasicModel(id: 1,name: '50%'));

  double percent = 0.5;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
        ),
        body: BlocBuilder<InstallmentBloc, InstallmentState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loaded: (installmentInfo) {
                    return ScreenContainer(
                      margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.13),
                      child:SingleChildScrollView(
                        child: Column(
                        children: [
                          ColoredImagesWidget(secondaryImages: installmentInfo.secondaryImage),
                          SizedBox(height: AppSizeH.s10),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppSizeW.s20),
                            width: MediaQuery.sizeOf(context).width,
                            child: Column(
                              children: [
                                ImageWidget(url: installmentInfo.brandImage,height: MediaQuery.sizeOf(context).height*0.1),
                                SizedBox(height: AppSizeH.s10),
                                Text(installmentInfo.carName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge),
                                SizedBox(height: AppSizeH.s30),
                                Container(
                                  padding: EdgeInsets.all(AppSizeW.s12),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(AppSizeR.s15),
                                      border: Border.all(
                                          color: Theme.of(context).primaryColor)),
                                  width: MediaQuery.sizeOf(context).width,
                                  child: Text(
                                    LocaleKeys.installment_price.tr(),
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                                SizedBox(height: AppSizeH.s20),
                                Text('${Helper.instance.functionsHelper.insertPeriod(installmentInfo.price.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headlineLarge
                                        ?.copyWith(
                                        fontWeight: FontWeight.w800)),
                                SizedBox(height: AppSizeH.s30),
                                AnimatedBuilder(
                                    animation: selectedInstallmentPeriod,
                                    builder: (context, child) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                            2,
                                                (index) => InkWell(
                                              onTap: () {
                                                selectedInstallmentPeriod
                                                    .value = index;
                                                if (selectedInstallmentPeriod
                                                    .value ==
                                                    0) {
                                                  context
                                                      .read<InstallmentBloc>()
                                                      .add(InstallmentEvent.setInstallmentInfo(
                                                      installmentInfo.copyWith(
                                                          restPayPerMonth:
                                                          (installmentInfo.price -
                                                              (installmentInfo.price *
                                                                  percent)) /
                                                              12)));
                                                } else {
                                                  context
                                                      .read<InstallmentBloc>()
                                                      .add(InstallmentEvent.setInstallmentInfo(
                                                      installmentInfo.copyWith(
                                                          restPayPerMonth:
                                                          (installmentInfo.price -
                                                              (installmentInfo.price *
                                                                  percent)) /
                                                              24)));
                                                }
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s20,
                                                    vertical: AppSizeH.s10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        AppSizeR.s15),
                                                    border: Border.all(
                                                        color:
                                                        ColorManager
                                                            .primaryColor),
                                                    color:
                                                    selectedInstallmentPeriod
                                                        .value ==
                                                        index
                                                        ? ColorManager
                                                        .primaryColor
                                                        : Colors
                                                        .transparent),
                                                child: Text(
                                                  index == 0
                                                      ? '12 ${LocaleKeys.customer_car_month.tr()}'
                                                      : '24 ${LocaleKeys.customer_car_month.tr()}',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineLarge
                                                      ?.copyWith(
                                                    color: selectedInstallmentPeriod
                                                        .value == index?ColorManager.whiteGrey:ColorManager.secondaryColor,
                                                      fontSize:
                                                      AppSizeSp.s30),
                                                ),
                                              ),
                                            )),
                                      );
                                    }),
                                SizedBox(height: AppSizeH.s30),
                                Container(
                                    padding: EdgeInsets.symmetric(vertical: AppSizeH.s10,
                                        horizontal: AppSizeW.s30),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(AppSizeR.s15),
                                        border: Border.all(
                                            color:
                                            Theme.of(context).primaryColor)),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(LocaleKeys.installment_chooseDownPayment.tr(),style: Theme.of(context).textTheme.labelMedium),
                                              AnimatedBuilder(
                                                  animation: selectedDownPayment,
                                                  builder: (context,child) {
                                                    return CustomDropdownWithContainer(
                                                        width:
                                                        MediaQuery.sizeOf(context)
                                                            .width *
                                                            0.3,
                                                        selectedValue: selectedDownPayment.value,
                                                        items: const [
                                                          BasicModel(
                                                              id: 1, name: '50%'),
                                                          BasicModel(
                                                              id: 2, name: '60%'),
                                                          BasicModel(
                                                              id: 3, name: '70%'),
                                                          BasicModel(
                                                              id: 4, name: '80%'),
                                                        ],
                                                        onChanged: (p0) {
                                                          selectedDownPayment.value = p0!;
                                                          percent = selectedDownPayment.value.id ==1?0.5:selectedDownPayment.value.id ==2?0.6:selectedDownPayment.value.id ==3?0.7:0.8;
                                                          context.read<InstallmentBloc>().add(InstallmentEvent.setInstallmentInfo(installmentInfo.copyWith(
                                                              downPayment: installmentInfo.price * percent,
                                                              restPayPerMonth: (installmentInfo.price  - (installmentInfo.price *percent))/(selectedInstallmentPeriod.value ==0?12:24)
                                                          )));
                                                        },
                                                        itemAdd: '');
                                                  }
                                              ),
                                            ],
                                          ),
                                          Column(children: [
                                            Text(LocaleKeys.installment_downPayment.tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium),
                                            SizedBox(height: AppSizeH.s10),
                                            Text(
                                                '${Helper.instance.functionsHelper.insertPeriod(installmentInfo.downPayment?.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium)
                                          ])
                                        ])),
                                // SizedBox(height: AppSizeH.s30),
                                // AnimatedBuilder(
                                //   animation: selectedInstallmentPeriod,
                                //   builder: (context, child) => SizedBox(
                                //       width: MediaQuery.sizeOf(context).width,
                                //       child: ElevatedButton(
                                //         onPressed: () {},
                                //         child: Text(
                                //             '${LocaleKeys.installment_monthlyPayment.tr()} ${selectedInstallmentPeriod.value == 0 ? '12' : '24'} ${LocaleKeys.customer_car_month.tr()}'),
                                //       )),
                                // ),
                                SizedBox(height: AppSizeH.s20),
                                Text('${LocaleKeys.installment_monthlyPayment.tr()}:',style: Theme.of(context).textTheme.headlineSmall),
                                SizedBox(height: AppSizeH.s10),
                                AnimatedBuilder(
                                    animation: selectedInstallmentPeriod,
                                    builder: (context, child) {
                                      return Text(
                                          '${Helper.instance.functionsHelper.insertPeriod(installmentInfo.restPayPerMonth?.toInt().toString())} ${getIt<AppPreferences>().userPreferences.getCurrency}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineLarge);
                                    }),
                                SizedBox(height: AppSizeH.s20)
                              ],
                            ),
                          )
                        ],
                        ),
                      ));
                  },
                  orElse: () => const SizedBox.shrink());
            }));
  }
}
