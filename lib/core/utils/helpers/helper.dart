import 'package:mac_mobile/core/utils/helpers/location_permession_helper.dart';

import 'export_helpers.dart';

class Helper {
  Helper._();

  Helper._internal();

  static final Helper instance = Helper._internal();

  DateHelper get dateHelper => DateHelper();

  RouterHelper get routerHelper => RouterHelper();

  FileHelper get fileHelper => FileHelper();

  FunctionsHelper get functionsHelper => FunctionsHelper();

  NetworkHelper get networkHelper => NetworkHelper();

  DialogHelper get messageHelper => DialogHelper();

  LocationPermissionHelper get locationPermissionHelper => LocationPermissionHelper.instance;
}

