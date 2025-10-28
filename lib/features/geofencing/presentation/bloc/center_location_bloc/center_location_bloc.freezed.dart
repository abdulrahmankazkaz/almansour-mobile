// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'center_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CenterLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lng, String lat) setCenterLocation,
    required TResult Function() getServiceCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lng, String lat)? setCenterLocation,
    TResult? Function()? getServiceCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lng, String lat)? setCenterLocation,
    TResult Function()? getServiceCenters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetCenterLocation value) setCenterLocation,
    required TResult Function(_GetServiceCenters value) getServiceCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetCenterLocation value)? setCenterLocation,
    TResult? Function(_GetServiceCenters value)? getServiceCenters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetCenterLocation value)? setCenterLocation,
    TResult Function(_GetServiceCenters value)? getServiceCenters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterLocationEventCopyWith<$Res> {
  factory $CenterLocationEventCopyWith(
          CenterLocationEvent value, $Res Function(CenterLocationEvent) then) =
      _$CenterLocationEventCopyWithImpl<$Res, CenterLocationEvent>;
}

/// @nodoc
class _$CenterLocationEventCopyWithImpl<$Res, $Val extends CenterLocationEvent>
    implements $CenterLocationEventCopyWith<$Res> {
  _$CenterLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CenterLocationEvent
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
    extends _$CenterLocationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CenterLocationEvent.started()';
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
    required TResult Function(String lng, String lat) setCenterLocation,
    required TResult Function() getServiceCenters,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lng, String lat)? setCenterLocation,
    TResult? Function()? getServiceCenters,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lng, String lat)? setCenterLocation,
    TResult Function()? getServiceCenters,
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
    required TResult Function(_SetCenterLocation value) setCenterLocation,
    required TResult Function(_GetServiceCenters value) getServiceCenters,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetCenterLocation value)? setCenterLocation,
    TResult? Function(_GetServiceCenters value)? getServiceCenters,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetCenterLocation value)? setCenterLocation,
    TResult Function(_GetServiceCenters value)? getServiceCenters,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CenterLocationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetCenterLocationImplCopyWith<$Res> {
  factory _$$SetCenterLocationImplCopyWith(_$SetCenterLocationImpl value,
          $Res Function(_$SetCenterLocationImpl) then) =
      __$$SetCenterLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lng, String lat});
}

/// @nodoc
class __$$SetCenterLocationImplCopyWithImpl<$Res>
    extends _$CenterLocationEventCopyWithImpl<$Res, _$SetCenterLocationImpl>
    implements _$$SetCenterLocationImplCopyWith<$Res> {
  __$$SetCenterLocationImplCopyWithImpl(_$SetCenterLocationImpl _value,
      $Res Function(_$SetCenterLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lng = null,
    Object? lat = null,
  }) {
    return _then(_$SetCenterLocationImpl(
      null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCenterLocationImpl implements _SetCenterLocation {
  const _$SetCenterLocationImpl(this.lng, this.lat);

  @override
  final String lng;
  @override
  final String lat;

  @override
  String toString() {
    return 'CenterLocationEvent.setCenterLocation(lng: $lng, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCenterLocationImpl &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lng, lat);

  /// Create a copy of CenterLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCenterLocationImplCopyWith<_$SetCenterLocationImpl> get copyWith =>
      __$$SetCenterLocationImplCopyWithImpl<_$SetCenterLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lng, String lat) setCenterLocation,
    required TResult Function() getServiceCenters,
  }) {
    return setCenterLocation(lng, lat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lng, String lat)? setCenterLocation,
    TResult? Function()? getServiceCenters,
  }) {
    return setCenterLocation?.call(lng, lat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lng, String lat)? setCenterLocation,
    TResult Function()? getServiceCenters,
    required TResult orElse(),
  }) {
    if (setCenterLocation != null) {
      return setCenterLocation(lng, lat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetCenterLocation value) setCenterLocation,
    required TResult Function(_GetServiceCenters value) getServiceCenters,
  }) {
    return setCenterLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetCenterLocation value)? setCenterLocation,
    TResult? Function(_GetServiceCenters value)? getServiceCenters,
  }) {
    return setCenterLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetCenterLocation value)? setCenterLocation,
    TResult Function(_GetServiceCenters value)? getServiceCenters,
    required TResult orElse(),
  }) {
    if (setCenterLocation != null) {
      return setCenterLocation(this);
    }
    return orElse();
  }
}

abstract class _SetCenterLocation implements CenterLocationEvent {
  const factory _SetCenterLocation(final String lng, final String lat) =
      _$SetCenterLocationImpl;

  String get lng;
  String get lat;

  /// Create a copy of CenterLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCenterLocationImplCopyWith<_$SetCenterLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServiceCentersImplCopyWith<$Res> {
  factory _$$GetServiceCentersImplCopyWith(_$GetServiceCentersImpl value,
          $Res Function(_$GetServiceCentersImpl) then) =
      __$$GetServiceCentersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServiceCentersImplCopyWithImpl<$Res>
    extends _$CenterLocationEventCopyWithImpl<$Res, _$GetServiceCentersImpl>
    implements _$$GetServiceCentersImplCopyWith<$Res> {
  __$$GetServiceCentersImplCopyWithImpl(_$GetServiceCentersImpl _value,
      $Res Function(_$GetServiceCentersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetServiceCentersImpl implements _GetServiceCenters {
  const _$GetServiceCentersImpl();

  @override
  String toString() {
    return 'CenterLocationEvent.getServiceCenters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetServiceCentersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lng, String lat) setCenterLocation,
    required TResult Function() getServiceCenters,
  }) {
    return getServiceCenters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lng, String lat)? setCenterLocation,
    TResult? Function()? getServiceCenters,
  }) {
    return getServiceCenters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lng, String lat)? setCenterLocation,
    TResult Function()? getServiceCenters,
    required TResult orElse(),
  }) {
    if (getServiceCenters != null) {
      return getServiceCenters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetCenterLocation value) setCenterLocation,
    required TResult Function(_GetServiceCenters value) getServiceCenters,
  }) {
    return getServiceCenters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetCenterLocation value)? setCenterLocation,
    TResult? Function(_GetServiceCenters value)? getServiceCenters,
  }) {
    return getServiceCenters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetCenterLocation value)? setCenterLocation,
    TResult Function(_GetServiceCenters value)? getServiceCenters,
    required TResult orElse(),
  }) {
    if (getServiceCenters != null) {
      return getServiceCenters(this);
    }
    return orElse();
  }
}

abstract class _GetServiceCenters implements CenterLocationEvent {
  const factory _GetServiceCenters() = _$GetServiceCentersImpl;
}

/// @nodoc
mixin _$CenterLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lat) loaded,
    required TResult Function(List<ServiceCenter> centers) centersLoaded,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String lng, String lat)? loaded,
    TResult? Function(List<ServiceCenter> centers)? centersLoaded,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lat)? loaded,
    TResult Function(List<ServiceCenter> centers)? centersLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CentersLoaded value) centersLoaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CentersLoaded value)? centersLoaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CentersLoaded value)? centersLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterLocationStateCopyWith<$Res> {
  factory $CenterLocationStateCopyWith(
          CenterLocationState value, $Res Function(CenterLocationState) then) =
      _$CenterLocationStateCopyWithImpl<$Res, CenterLocationState>;
}

/// @nodoc
class _$CenterLocationStateCopyWithImpl<$Res, $Val extends CenterLocationState>
    implements $CenterLocationStateCopyWith<$Res> {
  _$CenterLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CenterLocationState
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
    extends _$CenterLocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CenterLocationState.initial()';
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
    required TResult Function(String lng, String lat) loaded,
    required TResult Function(List<ServiceCenter> centers) centersLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String lng, String lat)? loaded,
    TResult? Function(List<ServiceCenter> centers)? centersLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lat)? loaded,
    TResult Function(List<ServiceCenter> centers)? centersLoaded,
    TResult Function(String errorMessage)? failed,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CentersLoaded value) centersLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CentersLoaded value)? centersLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CentersLoaded value)? centersLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CenterLocationState {
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
    extends _$CenterLocationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CenterLocationState.loading()';
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
    required TResult Function(String lng, String lat) loaded,
    required TResult Function(List<ServiceCenter> centers) centersLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String lng, String lat)? loaded,
    TResult? Function(List<ServiceCenter> centers)? centersLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lat)? loaded,
    TResult Function(List<ServiceCenter> centers)? centersLoaded,
    TResult Function(String errorMessage)? failed,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CentersLoaded value) centersLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CentersLoaded value)? centersLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CentersLoaded value)? centersLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CenterLocationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lng, String lat});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CenterLocationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lng = null,
    Object? lat = null,
  }) {
    return _then(_$LoadedImpl(
      null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.lng, this.lat);

  @override
  final String lng;
  @override
  final String lat;

  @override
  String toString() {
    return 'CenterLocationState.loaded(lng: $lng, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lng, lat);

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lat) loaded,
    required TResult Function(List<ServiceCenter> centers) centersLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loaded(lng, lat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String lng, String lat)? loaded,
    TResult? Function(List<ServiceCenter> centers)? centersLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loaded?.call(lng, lat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lat)? loaded,
    TResult Function(List<ServiceCenter> centers)? centersLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(lng, lat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CentersLoaded value) centersLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CentersLoaded value)? centersLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CentersLoaded value)? centersLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CenterLocationState {
  const factory _Loaded(final String lng, final String lat) = _$LoadedImpl;

  String get lng;
  String get lat;

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CentersLoadedImplCopyWith<$Res> {
  factory _$$CentersLoadedImplCopyWith(
          _$CentersLoadedImpl value, $Res Function(_$CentersLoadedImpl) then) =
      __$$CentersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ServiceCenter> centers});
}

/// @nodoc
class __$$CentersLoadedImplCopyWithImpl<$Res>
    extends _$CenterLocationStateCopyWithImpl<$Res, _$CentersLoadedImpl>
    implements _$$CentersLoadedImplCopyWith<$Res> {
  __$$CentersLoadedImplCopyWithImpl(
      _$CentersLoadedImpl _value, $Res Function(_$CentersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? centers = null,
  }) {
    return _then(_$CentersLoadedImpl(
      null == centers
          ? _value._centers
          : centers // ignore: cast_nullable_to_non_nullable
              as List<ServiceCenter>,
    ));
  }
}

/// @nodoc

class _$CentersLoadedImpl implements _CentersLoaded {
  const _$CentersLoadedImpl(final List<ServiceCenter> centers)
      : _centers = centers;

  final List<ServiceCenter> _centers;
  @override
  List<ServiceCenter> get centers {
    if (_centers is EqualUnmodifiableListView) return _centers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_centers);
  }

  @override
  String toString() {
    return 'CenterLocationState.centersLoaded(centers: $centers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CentersLoadedImpl &&
            const DeepCollectionEquality().equals(other._centers, _centers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_centers));

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CentersLoadedImplCopyWith<_$CentersLoadedImpl> get copyWith =>
      __$$CentersLoadedImplCopyWithImpl<_$CentersLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String lng, String lat) loaded,
    required TResult Function(List<ServiceCenter> centers) centersLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return centersLoaded(centers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String lng, String lat)? loaded,
    TResult? Function(List<ServiceCenter> centers)? centersLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return centersLoaded?.call(centers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lat)? loaded,
    TResult Function(List<ServiceCenter> centers)? centersLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (centersLoaded != null) {
      return centersLoaded(centers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CentersLoaded value) centersLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return centersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CentersLoaded value)? centersLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return centersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CentersLoaded value)? centersLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (centersLoaded != null) {
      return centersLoaded(this);
    }
    return orElse();
  }
}

abstract class _CentersLoaded implements CenterLocationState {
  const factory _CentersLoaded(final List<ServiceCenter> centers) =
      _$CentersLoadedImpl;

  List<ServiceCenter> get centers;

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CentersLoadedImplCopyWith<_$CentersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$CenterLocationStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CenterLocationState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CenterLocationState
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
    required TResult Function(String lng, String lat) loaded,
    required TResult Function(List<ServiceCenter> centers) centersLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String lng, String lat)? loaded,
    TResult? Function(List<ServiceCenter> centers)? centersLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String lng, String lat)? loaded,
    TResult Function(List<ServiceCenter> centers)? centersLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CentersLoaded value) centersLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CentersLoaded value)? centersLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CentersLoaded value)? centersLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements CenterLocationState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of CenterLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
