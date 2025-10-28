// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(void Function(String, String) function)
        requestPermission,
    required TResult Function() getCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(void Function(String, String) function)?
        requestPermission,
    TResult? Function()? getCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(void Function(String, String) function)? requestPermission,
    TResult Function()? getCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MapEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(void Function(String, String) function)
        requestPermission,
    required TResult Function() getCurrentLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(void Function(String, String) function)?
        requestPermission,
    TResult? Function()? getCurrentLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(void Function(String, String) function)? requestPermission,
    TResult Function()? getCurrentLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MapEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RequestPermissionImplCopyWith<$Res> {
  factory _$$RequestPermissionImplCopyWith(_$RequestPermissionImpl value,
          $Res Function(_$RequestPermissionImpl) then) =
      __$$RequestPermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function(String, String) function});
}

/// @nodoc
class __$$RequestPermissionImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$RequestPermissionImpl>
    implements _$$RequestPermissionImplCopyWith<$Res> {
  __$$RequestPermissionImplCopyWithImpl(_$RequestPermissionImpl _value,
      $Res Function(_$RequestPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? function = null,
  }) {
    return _then(_$RequestPermissionImpl(
      null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as void Function(String, String),
    ));
  }
}

/// @nodoc

class _$RequestPermissionImpl implements _RequestPermission {
  const _$RequestPermissionImpl(this.function);

  @override
  final void Function(String, String) function;

  @override
  String toString() {
    return 'MapEvent.requestPermission(function: $function)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPermissionImpl &&
            (identical(other.function, function) ||
                other.function == function));
  }

  @override
  int get hashCode => Object.hash(runtimeType, function);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPermissionImplCopyWith<_$RequestPermissionImpl> get copyWith =>
      __$$RequestPermissionImplCopyWithImpl<_$RequestPermissionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(void Function(String, String) function)
        requestPermission,
    required TResult Function() getCurrentLocation,
  }) {
    return requestPermission(function);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(void Function(String, String) function)?
        requestPermission,
    TResult? Function()? getCurrentLocation,
  }) {
    return requestPermission?.call(function);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(void Function(String, String) function)? requestPermission,
    TResult Function()? getCurrentLocation,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(function);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
  }) {
    return requestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
  }) {
    return requestPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestPermission implements MapEvent {
  const factory _RequestPermission(
      final void Function(String, String) function) = _$RequestPermissionImpl;

  void Function(String, String) get function;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPermissionImplCopyWith<_$RequestPermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrentLocationImplCopyWith<$Res> {
  factory _$$GetCurrentLocationImplCopyWith(_$GetCurrentLocationImpl value,
          $Res Function(_$GetCurrentLocationImpl) then) =
      __$$GetCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentLocationImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$GetCurrentLocationImpl>
    implements _$$GetCurrentLocationImplCopyWith<$Res> {
  __$$GetCurrentLocationImplCopyWithImpl(_$GetCurrentLocationImpl _value,
      $Res Function(_$GetCurrentLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCurrentLocationImpl implements _GetCurrentLocation {
  const _$GetCurrentLocationImpl();

  @override
  String toString() {
    return 'MapEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(void Function(String, String) function)
        requestPermission,
    required TResult Function() getCurrentLocation,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(void Function(String, String) function)?
        requestPermission,
    TResult? Function()? getCurrentLocation,
  }) {
    return getCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(void Function(String, String) function)? requestPermission,
    TResult Function()? getCurrentLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
  }) {
    return getCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentLocation implements MapEvent {
  const factory _GetCurrentLocation() = _$GetCurrentLocationImpl;
}

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MapState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MapState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MapState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$PermissionGrantedImplCopyWith<$Res> {
  factory _$$PermissionGrantedImplCopyWith(_$PermissionGrantedImpl value,
          $Res Function(_$PermissionGrantedImpl) then) =
      __$$PermissionGrantedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionGrantedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$PermissionGrantedImpl>
    implements _$$PermissionGrantedImplCopyWith<$Res> {
  __$$PermissionGrantedImplCopyWithImpl(_$PermissionGrantedImpl _value,
      $Res Function(_$PermissionGrantedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionGrantedImpl implements _PermissionGranted {
  const _$PermissionGrantedImpl();

  @override
  String toString() {
    return 'MapState.permissionGranted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionGrantedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) {
    return permissionGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) {
    return permissionGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (permissionGranted != null) {
      return permissionGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) {
    return permissionGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) {
    return permissionGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (permissionGranted != null) {
      return permissionGranted(this);
    }
    return orElse();
  }
}

abstract class _PermissionGranted implements MapState {
  const factory _PermissionGranted() = _$PermissionGrantedImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(_$PermissionDeniedImpl value,
          $Res Function(_$PermissionDeniedImpl) then) =
      __$$PermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(_$PermissionDeniedImpl _value,
      $Res Function(_$PermissionDeniedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionDeniedImpl implements _PermissionDenied {
  const _$PermissionDeniedImpl();

  @override
  String toString() {
    return 'MapState.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements MapState {
  const factory _PermissionDenied() = _$PermissionDeniedImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedForeverImplCopyWith<$Res> {
  factory _$$PermissionDeniedForeverImplCopyWith(
          _$PermissionDeniedForeverImpl value,
          $Res Function(_$PermissionDeniedForeverImpl) then) =
      __$$PermissionDeniedForeverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedForeverImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$PermissionDeniedForeverImpl>
    implements _$$PermissionDeniedForeverImplCopyWith<$Res> {
  __$$PermissionDeniedForeverImplCopyWithImpl(
      _$PermissionDeniedForeverImpl _value,
      $Res Function(_$PermissionDeniedForeverImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionDeniedForeverImpl implements _PermissionDeniedForever {
  const _$PermissionDeniedForeverImpl();

  @override
  String toString() {
    return 'MapState.permissionDeniedForever()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedForeverImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) {
    return permissionDeniedForever();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) {
    return permissionDeniedForever?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (permissionDeniedForever != null) {
      return permissionDeniedForever();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) {
    return permissionDeniedForever(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) {
    return permissionDeniedForever?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (permissionDeniedForever != null) {
      return permissionDeniedForever(this);
    }
    return orElse();
  }
}

abstract class _PermissionDeniedForever implements MapState {
  const factory _PermissionDeniedForever() = _$PermissionDeniedForeverImpl;
}

/// @nodoc
abstract class _$$LocationFetchedImplCopyWith<$Res> {
  factory _$$LocationFetchedImplCopyWith(_$LocationFetchedImpl value,
          $Res Function(_$LocationFetchedImpl) then) =
      __$$LocationFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$LocationFetchedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$LocationFetchedImpl>
    implements _$$LocationFetchedImplCopyWith<$Res> {
  __$$LocationFetchedImplCopyWithImpl(
      _$LocationFetchedImpl _value, $Res Function(_$LocationFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$LocationFetchedImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$LocationFetchedImpl implements _LocationFetched {
  const _$LocationFetchedImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'MapState.locationFetched(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFetchedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFetchedImplCopyWith<_$LocationFetchedImpl> get copyWith =>
      __$$LocationFetchedImplCopyWithImpl<_$LocationFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) {
    return locationFetched(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) {
    return locationFetched?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (locationFetched != null) {
      return locationFetched(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) {
    return locationFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) {
    return locationFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (locationFetched != null) {
      return locationFetched(this);
    }
    return orElse();
  }
}

abstract class _LocationFetched implements MapState {
  const factory _LocationFetched(final Position position) =
      _$LocationFetchedImpl;

  Position get position;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationFetchedImplCopyWith<_$LocationFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MapState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionGranted,
    required TResult Function() permissionDenied,
    required TResult Function() permissionDeniedForever,
    required TResult Function(Position position) locationFetched,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? permissionDeniedForever,
    TResult? Function(Position position)? locationFetched,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionGranted,
    TResult Function()? permissionDenied,
    TResult Function()? permissionDeniedForever,
    TResult Function(Position position)? locationFetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PermissionGranted value) permissionGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissionDeniedForever,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PermissionGranted value)? permissionGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PermissionGranted value)? permissionGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissionDeniedForever,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements MapState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
