// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_service_enum_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuickServiceEnumEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCities,
    required TResult Function(int cityId) getDealerships,
    required TResult Function() getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCities,
    TResult? Function(int cityId)? getDealerships,
    TResult? Function()? getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCities,
    TResult Function(int cityId)? getDealerships,
    TResult Function()? getServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_GetDealerships value) getDealerships,
    required TResult Function(_GetServices value) getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCities value)? getCities,
    TResult? Function(_GetDealerships value)? getDealerships,
    TResult? Function(_GetServices value)? getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_GetDealerships value)? getDealerships,
    TResult Function(_GetServices value)? getServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickServiceEnumEventCopyWith<$Res> {
  factory $QuickServiceEnumEventCopyWith(QuickServiceEnumEvent value,
          $Res Function(QuickServiceEnumEvent) then) =
      _$QuickServiceEnumEventCopyWithImpl<$Res, QuickServiceEnumEvent>;
}

/// @nodoc
class _$QuickServiceEnumEventCopyWithImpl<$Res,
        $Val extends QuickServiceEnumEvent>
    implements $QuickServiceEnumEventCopyWith<$Res> {
  _$QuickServiceEnumEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickServiceEnumEvent
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
    extends _$QuickServiceEnumEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'QuickServiceEnumEvent.started()';
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
    required TResult Function() getCities,
    required TResult Function(int cityId) getDealerships,
    required TResult Function() getServices,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCities,
    TResult? Function(int cityId)? getDealerships,
    TResult? Function()? getServices,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCities,
    TResult Function(int cityId)? getDealerships,
    TResult Function()? getServices,
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
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_GetDealerships value) getDealerships,
    required TResult Function(_GetServices value) getServices,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCities value)? getCities,
    TResult? Function(_GetDealerships value)? getDealerships,
    TResult? Function(_GetServices value)? getServices,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_GetDealerships value)? getDealerships,
    TResult Function(_GetServices value)? getServices,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuickServiceEnumEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCitiesImplCopyWith<$Res> {
  factory _$$GetCitiesImplCopyWith(
          _$GetCitiesImpl value, $Res Function(_$GetCitiesImpl) then) =
      __$$GetCitiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCitiesImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumEventCopyWithImpl<$Res, _$GetCitiesImpl>
    implements _$$GetCitiesImplCopyWith<$Res> {
  __$$GetCitiesImplCopyWithImpl(
      _$GetCitiesImpl _value, $Res Function(_$GetCitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCitiesImpl implements _GetCities {
  const _$GetCitiesImpl();

  @override
  String toString() {
    return 'QuickServiceEnumEvent.getCities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCitiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCities,
    required TResult Function(int cityId) getDealerships,
    required TResult Function() getServices,
  }) {
    return getCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCities,
    TResult? Function(int cityId)? getDealerships,
    TResult? Function()? getServices,
  }) {
    return getCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCities,
    TResult Function(int cityId)? getDealerships,
    TResult Function()? getServices,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_GetDealerships value) getDealerships,
    required TResult Function(_GetServices value) getServices,
  }) {
    return getCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCities value)? getCities,
    TResult? Function(_GetDealerships value)? getDealerships,
    TResult? Function(_GetServices value)? getServices,
  }) {
    return getCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_GetDealerships value)? getDealerships,
    TResult Function(_GetServices value)? getServices,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities(this);
    }
    return orElse();
  }
}

abstract class _GetCities implements QuickServiceEnumEvent {
  const factory _GetCities() = _$GetCitiesImpl;
}

/// @nodoc
abstract class _$$GetDealershipsImplCopyWith<$Res> {
  factory _$$GetDealershipsImplCopyWith(_$GetDealershipsImpl value,
          $Res Function(_$GetDealershipsImpl) then) =
      __$$GetDealershipsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cityId});
}

/// @nodoc
class __$$GetDealershipsImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumEventCopyWithImpl<$Res, _$GetDealershipsImpl>
    implements _$$GetDealershipsImplCopyWith<$Res> {
  __$$GetDealershipsImplCopyWithImpl(
      _$GetDealershipsImpl _value, $Res Function(_$GetDealershipsImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
  }) {
    return _then(_$GetDealershipsImpl(
      null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDealershipsImpl implements _GetDealerships {
  const _$GetDealershipsImpl(this.cityId);

  @override
  final int cityId;

  @override
  String toString() {
    return 'QuickServiceEnumEvent.getDealerships(cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDealershipsImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId);

  /// Create a copy of QuickServiceEnumEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDealershipsImplCopyWith<_$GetDealershipsImpl> get copyWith =>
      __$$GetDealershipsImplCopyWithImpl<_$GetDealershipsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCities,
    required TResult Function(int cityId) getDealerships,
    required TResult Function() getServices,
  }) {
    return getDealerships(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCities,
    TResult? Function(int cityId)? getDealerships,
    TResult? Function()? getServices,
  }) {
    return getDealerships?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCities,
    TResult Function(int cityId)? getDealerships,
    TResult Function()? getServices,
    required TResult orElse(),
  }) {
    if (getDealerships != null) {
      return getDealerships(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_GetDealerships value) getDealerships,
    required TResult Function(_GetServices value) getServices,
  }) {
    return getDealerships(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCities value)? getCities,
    TResult? Function(_GetDealerships value)? getDealerships,
    TResult? Function(_GetServices value)? getServices,
  }) {
    return getDealerships?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_GetDealerships value)? getDealerships,
    TResult Function(_GetServices value)? getServices,
    required TResult orElse(),
  }) {
    if (getDealerships != null) {
      return getDealerships(this);
    }
    return orElse();
  }
}

abstract class _GetDealerships implements QuickServiceEnumEvent {
  const factory _GetDealerships(final int cityId) = _$GetDealershipsImpl;

  int get cityId;

  /// Create a copy of QuickServiceEnumEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDealershipsImplCopyWith<_$GetDealershipsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServicesImplCopyWith<$Res> {
  factory _$$GetServicesImplCopyWith(
          _$GetServicesImpl value, $Res Function(_$GetServicesImpl) then) =
      __$$GetServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServicesImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumEventCopyWithImpl<$Res, _$GetServicesImpl>
    implements _$$GetServicesImplCopyWith<$Res> {
  __$$GetServicesImplCopyWithImpl(
      _$GetServicesImpl _value, $Res Function(_$GetServicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetServicesImpl implements _GetServices {
  const _$GetServicesImpl();

  @override
  String toString() {
    return 'QuickServiceEnumEvent.getServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCities,
    required TResult Function(int cityId) getDealerships,
    required TResult Function() getServices,
  }) {
    return getServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCities,
    TResult? Function(int cityId)? getDealerships,
    TResult? Function()? getServices,
  }) {
    return getServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCities,
    TResult Function(int cityId)? getDealerships,
    TResult Function()? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_GetDealerships value) getDealerships,
    required TResult Function(_GetServices value) getServices,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCities value)? getCities,
    TResult? Function(_GetDealerships value)? getDealerships,
    TResult? Function(_GetServices value)? getServices,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_GetDealerships value)? getDealerships,
    TResult Function(_GetServices value)? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetServices implements QuickServiceEnumEvent {
  const factory _GetServices() = _$GetServicesImpl;
}

/// @nodoc
mixin _$QuickServiceEnumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickServiceEnumStateCopyWith<$Res> {
  factory $QuickServiceEnumStateCopyWith(QuickServiceEnumState value,
          $Res Function(QuickServiceEnumState) then) =
      _$QuickServiceEnumStateCopyWithImpl<$Res, QuickServiceEnumState>;
}

/// @nodoc
class _$QuickServiceEnumStateCopyWithImpl<$Res,
        $Val extends QuickServiceEnumState>
    implements $QuickServiceEnumStateCopyWith<$Res> {
  _$QuickServiceEnumStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickServiceEnumState
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
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuickServiceEnumState.initial()';
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
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuickServiceEnumState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CitiesLoadingImplCopyWith<$Res> {
  factory _$$CitiesLoadingImplCopyWith(
          _$CitiesLoadingImpl value, $Res Function(_$CitiesLoadingImpl) then) =
      __$$CitiesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CitiesLoadingImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$CitiesLoadingImpl>
    implements _$$CitiesLoadingImplCopyWith<$Res> {
  __$$CitiesLoadingImplCopyWithImpl(
      _$CitiesLoadingImpl _value, $Res Function(_$CitiesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CitiesLoadingImpl implements _CitiesLoading {
  const _$CitiesLoadingImpl();

  @override
  String toString() {
    return 'QuickServiceEnumState.citiesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CitiesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return citiesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return citiesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (citiesLoading != null) {
      return citiesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return citiesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return citiesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (citiesLoading != null) {
      return citiesLoading(this);
    }
    return orElse();
  }
}

abstract class _CitiesLoading implements QuickServiceEnumState {
  const factory _CitiesLoading() = _$CitiesLoadingImpl;
}

/// @nodoc
abstract class _$$DealershipsLoadingImplCopyWith<$Res> {
  factory _$$DealershipsLoadingImplCopyWith(_$DealershipsLoadingImpl value,
          $Res Function(_$DealershipsLoadingImpl) then) =
      __$$DealershipsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DealershipsLoadingImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$DealershipsLoadingImpl>
    implements _$$DealershipsLoadingImplCopyWith<$Res> {
  __$$DealershipsLoadingImplCopyWithImpl(_$DealershipsLoadingImpl _value,
      $Res Function(_$DealershipsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DealershipsLoadingImpl implements _DealershipsLoading {
  const _$DealershipsLoadingImpl();

  @override
  String toString() {
    return 'QuickServiceEnumState.dealershipsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DealershipsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return dealershipsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return dealershipsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (dealershipsLoading != null) {
      return dealershipsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return dealershipsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return dealershipsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (dealershipsLoading != null) {
      return dealershipsLoading(this);
    }
    return orElse();
  }
}

abstract class _DealershipsLoading implements QuickServiceEnumState {
  const factory _DealershipsLoading() = _$DealershipsLoadingImpl;
}

/// @nodoc
abstract class _$$ServicesLoadingImplCopyWith<$Res> {
  factory _$$ServicesLoadingImplCopyWith(_$ServicesLoadingImpl value,
          $Res Function(_$ServicesLoadingImpl) then) =
      __$$ServicesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServicesLoadingImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$ServicesLoadingImpl>
    implements _$$ServicesLoadingImplCopyWith<$Res> {
  __$$ServicesLoadingImplCopyWithImpl(
      _$ServicesLoadingImpl _value, $Res Function(_$ServicesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServicesLoadingImpl implements _ServicesLoading {
  const _$ServicesLoadingImpl();

  @override
  String toString() {
    return 'QuickServiceEnumState.servicesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServicesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return servicesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return servicesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (servicesLoading != null) {
      return servicesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return servicesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return servicesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (servicesLoading != null) {
      return servicesLoading(this);
    }
    return orElse();
  }
}

abstract class _ServicesLoading implements QuickServiceEnumState {
  const factory _ServicesLoading() = _$ServicesLoadingImpl;
}

/// @nodoc
abstract class _$$CitiesLoadedImplCopyWith<$Res> {
  factory _$$CitiesLoadedImplCopyWith(
          _$CitiesLoadedImpl value, $Res Function(_$CitiesLoadedImpl) then) =
      __$$CitiesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasicModel> cities});
}

/// @nodoc
class __$$CitiesLoadedImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$CitiesLoadedImpl>
    implements _$$CitiesLoadedImplCopyWith<$Res> {
  __$$CitiesLoadedImplCopyWithImpl(
      _$CitiesLoadedImpl _value, $Res Function(_$CitiesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$CitiesLoadedImpl(
      null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<BasicModel>,
    ));
  }
}

/// @nodoc

class _$CitiesLoadedImpl implements _CitiesLoaded {
  const _$CitiesLoadedImpl(final List<BasicModel> cities) : _cities = cities;

  final List<BasicModel> _cities;
  @override
  List<BasicModel> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'QuickServiceEnumState.citiesLoaded(cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesLoadedImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesLoadedImplCopyWith<_$CitiesLoadedImpl> get copyWith =>
      __$$CitiesLoadedImplCopyWithImpl<_$CitiesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return citiesLoaded(cities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return citiesLoaded?.call(cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (citiesLoaded != null) {
      return citiesLoaded(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return citiesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return citiesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (citiesLoaded != null) {
      return citiesLoaded(this);
    }
    return orElse();
  }
}

abstract class _CitiesLoaded implements QuickServiceEnumState {
  const factory _CitiesLoaded(final List<BasicModel> cities) =
      _$CitiesLoadedImpl;

  List<BasicModel> get cities;

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CitiesLoadedImplCopyWith<_$CitiesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DealershipsLoadedImplCopyWith<$Res> {
  factory _$$DealershipsLoadedImplCopyWith(_$DealershipsLoadedImpl value,
          $Res Function(_$DealershipsLoadedImpl) then) =
      __$$DealershipsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasicModel> dealerships});
}

/// @nodoc
class __$$DealershipsLoadedImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$DealershipsLoadedImpl>
    implements _$$DealershipsLoadedImplCopyWith<$Res> {
  __$$DealershipsLoadedImplCopyWithImpl(_$DealershipsLoadedImpl _value,
      $Res Function(_$DealershipsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealerships = null,
  }) {
    return _then(_$DealershipsLoadedImpl(
      null == dealerships
          ? _value._dealerships
          : dealerships // ignore: cast_nullable_to_non_nullable
              as List<BasicModel>,
    ));
  }
}

/// @nodoc

class _$DealershipsLoadedImpl implements _DealershipsLoaded {
  const _$DealershipsLoadedImpl(final List<BasicModel> dealerships)
      : _dealerships = dealerships;

  final List<BasicModel> _dealerships;
  @override
  List<BasicModel> get dealerships {
    if (_dealerships is EqualUnmodifiableListView) return _dealerships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dealerships);
  }

  @override
  String toString() {
    return 'QuickServiceEnumState.dealershipsLoaded(dealerships: $dealerships)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealershipsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._dealerships, _dealerships));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dealerships));

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealershipsLoadedImplCopyWith<_$DealershipsLoadedImpl> get copyWith =>
      __$$DealershipsLoadedImplCopyWithImpl<_$DealershipsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return dealershipsLoaded(dealerships);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return dealershipsLoaded?.call(dealerships);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (dealershipsLoaded != null) {
      return dealershipsLoaded(dealerships);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return dealershipsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return dealershipsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (dealershipsLoaded != null) {
      return dealershipsLoaded(this);
    }
    return orElse();
  }
}

abstract class _DealershipsLoaded implements QuickServiceEnumState {
  const factory _DealershipsLoaded(final List<BasicModel> dealerships) =
      _$DealershipsLoadedImpl;

  List<BasicModel> get dealerships;

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealershipsLoadedImplCopyWith<_$DealershipsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServicesLoadedImplCopyWith<$Res> {
  factory _$$ServicesLoadedImplCopyWith(_$ServicesLoadedImpl value,
          $Res Function(_$ServicesLoadedImpl) then) =
      __$$ServicesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasicModel> services});
}

/// @nodoc
class __$$ServicesLoadedImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$ServicesLoadedImpl>
    implements _$$ServicesLoadedImplCopyWith<$Res> {
  __$$ServicesLoadedImplCopyWithImpl(
      _$ServicesLoadedImpl _value, $Res Function(_$ServicesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$ServicesLoadedImpl(
      null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BasicModel>,
    ));
  }
}

/// @nodoc

class _$ServicesLoadedImpl implements _ServicesLoaded {
  const _$ServicesLoadedImpl(final List<BasicModel> services)
      : _services = services;

  final List<BasicModel> _services;
  @override
  List<BasicModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'QuickServiceEnumState.servicesLoaded(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesLoadedImpl &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesLoadedImplCopyWith<_$ServicesLoadedImpl> get copyWith =>
      __$$ServicesLoadedImplCopyWithImpl<_$ServicesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return servicesLoaded(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return servicesLoaded?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (servicesLoaded != null) {
      return servicesLoaded(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return servicesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return servicesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (servicesLoaded != null) {
      return servicesLoaded(this);
    }
    return orElse();
  }
}

abstract class _ServicesLoaded implements QuickServiceEnumState {
  const factory _ServicesLoaded(final List<BasicModel> services) =
      _$ServicesLoadedImpl;

  List<BasicModel> get services;

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesLoadedImplCopyWith<_$ServicesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failedMessage});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$QuickServiceEnumStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedMessage = null,
  }) {
    return _then(_$FailedImpl(
      null == failedMessage
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.failedMessage);

  @override
  final String failedMessage;

  @override
  String toString() {
    return 'QuickServiceEnumState.failed(failedMessage: $failedMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.failedMessage, failedMessage) ||
                other.failedMessage == failedMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedMessage);

  /// Create a copy of QuickServiceEnumState
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
    required TResult Function() citiesLoading,
    required TResult Function() dealershipsLoading,
    required TResult Function() servicesLoading,
    required TResult Function(List<BasicModel> cities) citiesLoaded,
    required TResult Function(List<BasicModel> dealerships) dealershipsLoaded,
    required TResult Function(List<BasicModel> services) servicesLoaded,
    required TResult Function(String failedMessage) failed,
  }) {
    return failed(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? citiesLoading,
    TResult? Function()? dealershipsLoading,
    TResult? Function()? servicesLoading,
    TResult? Function(List<BasicModel> cities)? citiesLoaded,
    TResult? Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult? Function(List<BasicModel> services)? servicesLoaded,
    TResult? Function(String failedMessage)? failed,
  }) {
    return failed?.call(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? citiesLoading,
    TResult Function()? dealershipsLoading,
    TResult Function()? servicesLoading,
    TResult Function(List<BasicModel> cities)? citiesLoaded,
    TResult Function(List<BasicModel> dealerships)? dealershipsLoaded,
    TResult Function(List<BasicModel> services)? servicesLoaded,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CitiesLoading value) citiesLoading,
    required TResult Function(_DealershipsLoading value) dealershipsLoading,
    required TResult Function(_ServicesLoading value) servicesLoading,
    required TResult Function(_CitiesLoaded value) citiesLoaded,
    required TResult Function(_DealershipsLoaded value) dealershipsLoaded,
    required TResult Function(_ServicesLoaded value) servicesLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CitiesLoading value)? citiesLoading,
    TResult? Function(_DealershipsLoading value)? dealershipsLoading,
    TResult? Function(_ServicesLoading value)? servicesLoading,
    TResult? Function(_CitiesLoaded value)? citiesLoaded,
    TResult? Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult? Function(_ServicesLoaded value)? servicesLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CitiesLoading value)? citiesLoading,
    TResult Function(_DealershipsLoading value)? dealershipsLoading,
    TResult Function(_ServicesLoading value)? servicesLoading,
    TResult Function(_CitiesLoaded value)? citiesLoaded,
    TResult Function(_DealershipsLoaded value)? dealershipsLoaded,
    TResult Function(_ServicesLoaded value)? servicesLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements QuickServiceEnumState {
  const factory _Failed(final String failedMessage) = _$FailedImpl;

  String get failedMessage;

  /// Create a copy of QuickServiceEnumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
