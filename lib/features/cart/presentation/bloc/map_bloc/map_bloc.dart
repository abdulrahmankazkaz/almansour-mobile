import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';

part 'map_bloc.freezed.dart';
part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const MapState.initial()) {
    on<MapEvent>((event, emit) async {
      await event.map(
          started: (value) {
            emit(const MapState.initial());
          },
          requestPermission: (value) async =>
              await _onRequestPermission(emit, value),
          getCurrentLocation: (value) async =>
              await _onGetCurrentLocation(emit, value));
    });
  }

  Future<void> _onRequestPermission(
      Emitter<MapState> emit, _RequestPermission event) async {
    emit(const MapState.loading());
    LocationPermission permission = await Geolocator.requestPermission();
    LoggerService().logCatchDebug(message: permission.name);
    switch (permission) {
      case LocationPermission.denied:
        {
          emit(const MapState.permissionDenied());
        }
      case LocationPermission.unableToDetermine:
        {
         emit(const MapState.permissionDenied());
        }
      case LocationPermission.always:
        {
          if(!await checkLocationService())
          { emit(const MapState.permissionDenied());}
          else {
            Position position = await getCurrentLocation();
            emit(MapState.locationFetched(position));
            event.function(position.longitude.toString(),position.latitude.toString());
          }
        }
      case LocationPermission.whileInUse:
        {
          if(!await checkLocationService())
        { emit(const MapState.permissionDenied());}
          else {
            Position position = await getCurrentLocation();
            emit(MapState.locationFetched(position));
            event.function(position.longitude.toString(),position.latitude.toString());

          }
        }
      case LocationPermission.deniedForever:
        {
          emit(const MapState.permissionDeniedForever());
        }
    }
  }

  Future<void> _onGetCurrentLocation(
      Emitter<MapState> emit, _GetCurrentLocation event) async {
    emit(const MapState.initial());
  }

  Future<bool> checkLocationService() async {
    bool service =  await Geolocator.isLocationServiceEnabled();
    return service;
  }

  Future<Position> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

}
