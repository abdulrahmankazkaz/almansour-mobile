import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';
import 'package:mac_mobile/features/main/presentation/widgets/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/utils/resources/validator.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/scroll_screen_container.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../../widgets/text_fields/custom_text_field_with_upper_label.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../car/entities/car_brand/car_brand.dart';
import '../../../car/presentation/bloc/brand_bloc/brand_bloc.dart';
import '../../../main/presentation/bloc/image_bloc/image_bloc.dart';
import '../../entities/parameters/customer_car_parameters.dart';
import '../bloc/customer_car_bloc/customer_car_bloc.dart';

class AddCarPage extends StatefulWidget {
  const AddCarPage({super.key});

  @override
  State<AddCarPage> createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BrandBloc()),
      ],
      child: const AddCarCarView(),
    );
  }
}

class AddCarCarView extends StatefulWidget {
  const AddCarCarView({super.key});

  @override
  State<AddCarCarView> createState() => _AddCarCarViewState();
}

class _AddCarCarViewState extends State<AddCarCarView> {
  final String phoneNumber =
      getIt<AppPreferences>().userPreferences.getConfig?.phone ?? '';
  DateTime? _selectedModelDate;
  DateTime? _selectedExpireDate = DateTime.now().add(const Duration(days: 1));
  TextEditingController modelYearController = TextEditingController();
  TextEditingController expireYearController = TextEditingController();
  TextEditingController vinNumberController = TextEditingController();
  TextEditingController odometerController = TextEditingController();
  final ImagePicker _firstPicker = ImagePicker();
  final ImagePicker _secondPicker = ImagePicker();

  int? selectedTrimLevelId;
  BasicModel? selectedTrimLevel;
  final _formKey = GlobalKey<FormState>();

  List<CarBrand> carBrands = [];
  List<BasicModel> carNames = [];
  CarBrand? selectedBrand;
  late final ValueNotifier<BasicModel?> selectedName;
  bool isFirstImageUploaded = true;
  Key carDropdownKey = UniqueKey();

  @override
  void initState() {
    selectedName = ValueNotifier<BasicModel?>(null);
    context.read<CustomerCarBloc>().add(const CustomerCarEvent.started());
    context.read<BrandBloc>().add(const BrandEvent.getBrand());
    super.initState();
  }

  @override
  void dispose() {
    selectedName.dispose();
    modelYearController.dispose();
    expireYearController.dispose();
    vinNumberController.dispose();
    odometerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.whenOrNull(logoutSuccess: () {
              LoadingDialog.hide(context);
              context.go(RoutesPaths.welcomeRoute);
            });
            state.whenOrNull(failed: (errorMessage) {
              LoadingDialog.hide(context);
              Helper.instance.messageHelper
                  .showErrorMessage(context: context, message: errorMessage);
            });
            state.whenOrNull(loading: () => LoadingDialog.show(context));
          }),
          BlocListener<BrandBloc, BrandState>(
            listener: (context, state) {
              state.maybeWhen(
                  initial: () {},
                  brandLoading: () {},
                  carLoading: () {},
                  trimLevelLoading: () {},
                  brandLoaded: (brands) {
                    carBrands = brands;
                  },
                  carNamesLoaded: (carNames) {
                    this.carNames = carNames;
                  },
                  failed: (errorMessage) => Helper.instance.messageHelper
                      .showErrorMessage(
                          context: context, message: errorMessage),
                  orElse: () {});
            },
          ),
          BlocListener<CustomerCarBloc, CustomerCarState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () => LoadingDialog.show(context),
                setSuccessfully: () {
                  LoadingDialog.hide(context);
                  context.go(RoutesPaths.homeRoute);
                },
                mustAddCar: () {},
                getSuccessfully: (_) {},
                failed: (errorMessage) {
                  LoadingDialog.hide(context);
                  Helper.instance.messageHelper.showErrorMessage(
                      context: context, message: errorMessage);
                },
              );
            },
          ),
          BlocListener<ImageBloc, ImageState>(
              listener: (context, state) => state.maybeWhen(
                  loading: () => LoadingDialog.show(context),
                  uploaded: (imageUrl) {
                    isFirstImageUploaded
                        ? context
                            .read<CustomerCarBloc>()
                            .setFirstLicenseImages(imageUrl)
                        : context
                            .read<CustomerCarBloc>()
                            .setSecondLicenseImages(imageUrl);
                    LoadingDialog.hide(context);
                    return Helper.instance.messageHelper.showToastMessage(
                      isSuccessToast: true,
                        context: context,
                        message: LocaleKeys.messages_imageUploaded.tr());
                  },
                  failed: (errorMessage) {
                    LoadingDialog.hide(context);
                    return Helper.instance.messageHelper.showErrorMessage(
                        context: context, message: errorMessage);
                  },
                  orElse: () {
                    return;
                  }))
        ],
        child: ScrollScreenContainer(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    AppSizeW.s20,
                   AppSizeH.s0,
                    AppSizeW.s20,
                    AppSizeH.s30),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50.r),
                        bottomLeft: Radius.circular(50.r)),
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.secondaryColor.withAlpha(50),
                        offset: const Offset(
                          0,
                          1.0,
                        ),
                        blurRadius: 7,
                        spreadRadius: 3,
                      )
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(LocaleKeys.customer_car_enter_you_car.tr(),
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headlineLarge
                              ?.copyWith(
                                  color: ColorManager.secondaryColor,
                                  fontSize: 32.sp)),
                      SizedBox(height: AppSizeH.s10),
                      Text(
                        LocaleKeys.customer_car_your_car_information.tr(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: AppSizeH.s25),
                      Center(
                          child: Image.asset(Assets.imagesAddCar,
                              width: AppSizeW.s550, fit: BoxFit.contain)),
                      Form(
                        key: _formKey,
                        child: Column(children: [
                          SizedBox(height: AppSizeH.s20),
                          CustomTextFieldWithUpperLabel(
                              label: LocaleKeys.customer_car_vin_number.tr(),
                              controller: vinNumberController,
                              validator: Validator.vinValidation),
                          // SizedBox(height: AppSizeH.s15),
                          SizedBox(height: AppSizeH.s15),
                          BlocBuilder<BrandBloc, BrandState>(
                            buildWhen: (previous, current) {
                              return current.maybeWhen(
                                brandLoaded: (_) => true,
                                brandLoading: () => true,
                                orElse: () => false,
                              );
                            },
                            builder: (context, state) {
                              return BesideDropDown<CarBrand>(
                                // key: brandDropDownKey,
                                // loading: true,
                                validator: Validator.validateDropdownValue,
                                label: LocaleKeys.customer_car_brand.tr(),
                                items: carBrands,
                                loading: state.maybeWhen(brandLoading: () => true, orElse: () => false,),
                                stringConverter: (brand) {
                                  return brand.name;
                                },
                                value: selectedBrand,
                                onChanged: (brand) {
                                  selectedName.value = null;
                                  selectedTrimLevel = null;
                                  carNames = [];
                                  selectedBrand = brand;
                                  // Create new key to force dropdown recreation and clear validation
                                  carDropdownKey = UniqueKey();
                                  context
                                      .read<BrandBloc>()
                                      .add(BrandEvent.getCarNames(brand?.id ?? 1));
                                },
                              );
                            },
                          ),
                          SizedBox(height: AppSizeH.s15),
                          BlocBuilder<BrandBloc, BrandState>(
                            buildWhen: (previous, current) {
                              return current.maybeWhen(
                                carNamesLoaded: (_) => true,
                                carLoading:() =>  true,
                                orElse: () => false,
                              );
                            },
                            builder: (context, state) {
                              return ValueListenableBuilder<BasicModel?>(
                                valueListenable: selectedName,
                                builder: (context, selectedNameValue, child) {
                                  return BesideDropDown<BasicModel>(
                                    key: carDropdownKey,
                                    validator: (value) {
                                      if (carNames.isEmpty) {
                                        return null;
                                      }
                                      return Validator.validateDropdownValue(value);
                                    },
                                    label: LocaleKeys.customer_car_type.tr(),
                                    items: carNames,
                                    loading: state.maybeWhen(carLoading: () => true, orElse: () => false,),
                                    value: selectedNameValue,
                                    stringConverter: (car) {
                                      return car.name;
                                    },
                                    onChanged: (car) {
                                      selectedName.value = car;
                                    },
                                  );
                                },
                              );
                            },
                          ),

                          // SizedBox(height: AppSizeH.s15),
                          CustomTextFieldWithUpperLabel(
                              readOnly: true,
                              validator: Validator.validateRequiredField,
                              controller: modelYearController,
                              label: LocaleKeys.customer_car_modelYear.tr(),
                              onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(LocaleKeys.selectYear.tr(),
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .headlineMedium),
                                        content: SizedBox(
                                          // Need to use container to add size constraint.
                                          width: AppSizeW.s300,
                                          height: AppSizeH.s400,
                                          child: YearPicker(
                                            firstDate: DateTime(2010, 1),
                                            lastDate: DateTime(
                                                DateTime.now().year, 1),
                                            // save the selected date to _selectedDate DateTime variable.
                                            // It's used to set the previous selected date when
                                            // re-showing the dialog.
                                            selectedDate: _selectedModelDate,
                                            onChanged: (DateTime dateTime) {
                                              modelYearController.text =
                                                  DateFormat('yyyy', 'en')
                                                      .format(dateTime)
                                                      .toString();
                                              Navigator.pop(context);

                                              // Do something with the dateTime selected.
                                              // Remember that you need to use dateTime.year to get the year
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  )),
                          CustomTextFieldWithUpperLabel(
                              label: LocaleKeys.customer_car_odometer.tr(),
                              controller: odometerController,
                              textInputType: TextInputType.number,
                              validator: Validator.digitsOnlyValidation),
                          // SizedBox(height: AppSizeH.s15),
                          CustomTextFieldWithUpperLabel(
                              validator: Validator.validateRequiredField,
                              readOnly: true,
                              controller: expireYearController,
                              label: LocaleKeys.customer_car_licenseExpireDate
                                  .tr(),
                              onTap: () {
                                showDatePicker(
                                        context: context,
                                        firstDate: DateTime.now()
                                            .add(const Duration(days: 1)),
                                        lastDate: DateTime(
                                            DateTime.now().year + 5, 12, 31))
                                    .then((selectedDate) {
                                  selectedDate != null
                                      ? _selectedExpireDate = DateTime(
                                          selectedDate.year,
                                          selectedDate.month,
                                          selectedDate.day)
                                      : {};
                                  expireYearController.text =
                                      DateFormat('yyyy-MM-dd', 'en')
                                          .format(_selectedExpireDate!)
                                          .toString();
                                });
                              }),
                          SizedBox(height: AppSizeH.s50),
                          BlocBuilder<ImageBloc, ImageState>(
                            buildWhen: (previous, current) {
                              return current.maybeWhen(
                                  orElse: () => false,
                                  uploaded: (imageUrl) => true);
                            },
                            builder: (context, state) => Column(children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width,
                                child: ElevatedButton(
                                  style: Theme.of(context)
                                      .surfaceElevatedButtonTheme,
                                  onPressed: () async {
                                    final choice =
                                        await _showImageSourcePicker(context);
                                    if (choice != null) {
                                      try {
                                        final XFile? image = await _firstPicker
                                            .pickImage(source: choice);
                                        if (image != null && context.mounted) {
                                          isFirstImageUploaded = true;
                                          context.read<ImageBloc>().add(
                                              ImageEvent.uploadImage(image));
                                        }
                                      } catch (e) {
                                        if (e is PlatformException &&
                                            e.code == 'photo_access_denied') {
                                          if (context.mounted) {
                                            _showPermissionDeniedDialog(context,
                                                'Please allow access for photo');
                                          }
                                        }
                                        else if (e is PlatformException &&
                                        e.code == 'camera_access_denied'){
                                          if (context.mounted) {
                                            _showPermissionDeniedDialog(context,
                                                'Please allow access for camera');
                                          }
                                        }
                                        else {
                                          LoggerService().logCatchDebug(
                                              message: e.toString());
                                        }
                                      }
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        '${LocaleKeys.customer_car_insert_license.tr()} [${LocaleKeys.customer_car_front.tr()}]',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodySmall,
                                      ),
                                      const Spacer(),
                                      if (context
                                          .watch<CustomerCarBloc>()
                                          .firstLicenseImage
                                          .isNotEmpty)
                                        const Icon(Icons.check),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: AppSizeH.s10),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width,
                                child: ElevatedButton(
                                  style: Theme.of(context)
                                      .surfaceElevatedButtonTheme,
                                  onPressed: () async {
                                    final choice =
                                        await _showImageSourcePicker(context);
                                    if (choice != null) {
                                      try {
                                        final XFile? image = await _secondPicker
                                            .pickImage(source: choice);
                                        if (image != null && context.mounted) {
                                          isFirstImageUploaded = false;
                                          context.read<ImageBloc>().add(
                                              ImageEvent.uploadImage(image));
                                        }
                                      } catch (e) {
                                        if (e is PlatformException &&
                                            e.code == 'photo_access_denied') {
                                          if (context.mounted) {
                                            _showPermissionDeniedDialog(context,
                                                'Please allow access for photo');
                                          }
                                        }
                                        else if (e is PlatformException &&
                                            e.code == 'camera_access_denied'){
                                          if (context.mounted) {
                                            _showPermissionDeniedDialog(context,
                                                'Please allow access for camera');
                                          }
                                        }
                                        else {
                                          LoggerService().logCatchDebug(
                                              message: e.toString());
                                        }
                                      }
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        '${LocaleKeys.customer_car_insert_license.tr()} [${LocaleKeys.customer_car_back.tr()}]',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodySmall,
                                      ),
                                      const Spacer(),
                                      if (context
                                          .watch<CustomerCarBloc>()
                                          .secondLicenseImage
                                          .isNotEmpty)
                                        const Icon(Icons.check),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                      ),
                      SizedBox(height: AppSizeH.s30)
                    ]),
              ),
              SizedBox(height: AppSizeH.s20),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: AppSizeH.s50,
                        width: MediaQuery.sizeOf(context).width * 0.44,
                        child: ElevatedButton(
                            onPressed: () async {
                              final call = Uri.parse('tel:$phoneNumber');
                              if (await canLaunchUrl(call)) {
                                launchUrl(call);
                              } else {
                                Helper.instance.messageHelper.showErrorMessage(
                                    context: context,
                                    message: 'Could not launch $call');
                                // throw 'Could not launch $call';
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(LocaleKeys.callUs.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            color: ColorManager.surface)),
                                Row(
                                  children: [
                                    const Icon(Icons.call),
                                    Text(
                                        phoneNumber.isNotEmpty
                                            ? phoneNumber
                                            : '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                color: ColorManager.surface))
                                  ],
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.44,
                        height: AppSizeH.s50,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate() &&
                                  context
                                      .read<CustomerCarBloc>()
                                      .firstLicenseImage
                                      .isNotEmpty &&
                                  context
                                      .read<CustomerCarBloc>()
                                      .secondLicenseImage
                                      .isNotEmpty) {
                                context.read<CustomerCarBloc>().add(
                                    CustomerCarEvent.setCustomerCar(
                                        CustomerCarParameters(
                                            carNameId: selectedName.value!.id,
                                            licenseExpireDate:
                                                expireYearController.text,
                                            firstLicenseImage: context
                                                .read<CustomerCarBloc>()
                                                .firstLicenseImage,
                                            secondLicenseImage: context
                                                .read<CustomerCarBloc>()
                                                .secondLicenseImage,
                                            modelYear: modelYearController.text,
                                            odometer: int.parse(
                                                odometerController.text),
                                            vinNumber:
                                                vinNumberController.text)));
                              } else if (context
                                      .read<CustomerCarBloc>()
                                      .firstLicenseImage
                                      .isEmpty ||
                                  context
                                      .read<CustomerCarBloc>()
                                      .secondLicenseImage
                                      .isEmpty) {
                                Helper.instance.messageHelper.showToastMessage(
                                    context: context,
                                    message: LocaleKeys
                                        .customer_car_pleaseUploadRegistration
                                        .tr());
                              }
                            },
                            child: Text(LocaleKeys.confirm.tr())),
                      ),
                    ],
                  )),
              SizedBox(height: AppSizeH.s20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                width: MediaQuery.sizeOf(context).width,
                height: AppSizeH.s50,
                child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.logout());
                    },
                    child: Text(LocaleKeys.auth_logout.tr())),
              ),
              SizedBox(height: AppSizeH.s30)
            ]),
      ),
    );
  }

  Future<ImageSource?> _showImageSourcePicker(BuildContext context) async {
    return await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(AppSizeW.s15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text(LocaleKeys.gallery.tr()),
                onTap: () {
                  Navigator.of(context).pop(ImageSource.gallery);
                },
              ),
              const Divider(color: ColorManager.softGrey),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: Text(LocaleKeys.camera.tr()),
                onTap: () {
                  Navigator.of(context).pop(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showPermissionDeniedDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(LocaleKeys.messages_permissionDenied.tr()),
        content: Text(message.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(LocaleKeys.ok.tr()),
          ),
        ],
      ),
    );
  }
}
