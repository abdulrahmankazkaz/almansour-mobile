import 'package:geolocator/geolocator.dart';


class LocationPermissionHelper {
  LocationPermissionHelper._();

  static final LocationPermissionHelper _instance =
      LocationPermissionHelper._();

  static LocationPermissionHelper get instance => _instance;
  LocationPermission permission = LocationPermission.unableToDetermine;
  Position? position;

  Future<LocationPermission> requestLocationPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return LocationPermission.denied;
    }
    permission = await Geolocator.requestPermission();
    return permission;
  }

  Future<LocationPermission> checkLocationPermission() async {
   return Geolocator.checkPermission();
  }

  bool isCurrentLocationGranted() {
    return position != null ? true : false;
  }

  Position? currentLocation() {
    return position;
  }

  Future<Position> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }
}
