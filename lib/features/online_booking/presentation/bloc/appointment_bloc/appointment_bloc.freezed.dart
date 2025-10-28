// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getType,
    required TResult Function(bool firstFetch) getAppointments,
    required TResult Function() create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getType,
    TResult? Function(bool firstFetch)? getAppointments,
    TResult? Function()? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getType,
    TResult Function(bool firstFetch)? getAppointments,
    TResult Function()? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetType value) getType,
    required TResult Function(_GetAppointments value) getAppointments,
    required TResult Function(_CreateAppointment value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetType value)? getType,
    TResult? Function(_GetAppointments value)? getAppointments,
    TResult? Function(_CreateAppointment value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetType value)? getType,
    TResult Function(_GetAppointments value)? getAppointments,
    TResult Function(_CreateAppointment value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentEvent
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
    extends _$AppointmentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppointmentEvent.started()';
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
    required TResult Function() getType,
    required TResult Function(bool firstFetch) getAppointments,
    required TResult Function() create,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getType,
    TResult? Function(bool firstFetch)? getAppointments,
    TResult? Function()? create,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getType,
    TResult Function(bool firstFetch)? getAppointments,
    TResult Function()? create,
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
    required TResult Function(_GetType value) getType,
    required TResult Function(_GetAppointments value) getAppointments,
    required TResult Function(_CreateAppointment value) create,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetType value)? getType,
    TResult? Function(_GetAppointments value)? getAppointments,
    TResult? Function(_CreateAppointment value)? create,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetType value)? getType,
    TResult Function(_GetAppointments value)? getAppointments,
    TResult Function(_CreateAppointment value)? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppointmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetTypeImplCopyWith<$Res> {
  factory _$$GetTypeImplCopyWith(
          _$GetTypeImpl value, $Res Function(_$GetTypeImpl) then) =
      __$$GetTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTypeImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$GetTypeImpl>
    implements _$$GetTypeImplCopyWith<$Res> {
  __$$GetTypeImplCopyWithImpl(
      _$GetTypeImpl _value, $Res Function(_$GetTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTypeImpl implements _GetType {
  const _$GetTypeImpl();

  @override
  String toString() {
    return 'AppointmentEvent.getType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getType,
    required TResult Function(bool firstFetch) getAppointments,
    required TResult Function() create,
  }) {
    return getType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getType,
    TResult? Function(bool firstFetch)? getAppointments,
    TResult? Function()? create,
  }) {
    return getType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getType,
    TResult Function(bool firstFetch)? getAppointments,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (getType != null) {
      return getType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetType value) getType,
    required TResult Function(_GetAppointments value) getAppointments,
    required TResult Function(_CreateAppointment value) create,
  }) {
    return getType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetType value)? getType,
    TResult? Function(_GetAppointments value)? getAppointments,
    TResult? Function(_CreateAppointment value)? create,
  }) {
    return getType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetType value)? getType,
    TResult Function(_GetAppointments value)? getAppointments,
    TResult Function(_CreateAppointment value)? create,
    required TResult orElse(),
  }) {
    if (getType != null) {
      return getType(this);
    }
    return orElse();
  }
}

abstract class _GetType implements AppointmentEvent {
  const factory _GetType() = _$GetTypeImpl;
}

/// @nodoc
abstract class _$$GetAppointmentsImplCopyWith<$Res> {
  factory _$$GetAppointmentsImplCopyWith(_$GetAppointmentsImpl value,
          $Res Function(_$GetAppointmentsImpl) then) =
      __$$GetAppointmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool firstFetch});
}

/// @nodoc
class __$$GetAppointmentsImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$GetAppointmentsImpl>
    implements _$$GetAppointmentsImplCopyWith<$Res> {
  __$$GetAppointmentsImplCopyWithImpl(
      _$GetAppointmentsImpl _value, $Res Function(_$GetAppointmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstFetch = null,
  }) {
    return _then(_$GetAppointmentsImpl(
      null == firstFetch
          ? _value.firstFetch
          : firstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetAppointmentsImpl implements _GetAppointments {
  const _$GetAppointmentsImpl(this.firstFetch);

  @override
  final bool firstFetch;

  @override
  String toString() {
    return 'AppointmentEvent.getAppointments(firstFetch: $firstFetch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppointmentsImpl &&
            (identical(other.firstFetch, firstFetch) ||
                other.firstFetch == firstFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstFetch);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppointmentsImplCopyWith<_$GetAppointmentsImpl> get copyWith =>
      __$$GetAppointmentsImplCopyWithImpl<_$GetAppointmentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getType,
    required TResult Function(bool firstFetch) getAppointments,
    required TResult Function() create,
  }) {
    return getAppointments(firstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getType,
    TResult? Function(bool firstFetch)? getAppointments,
    TResult? Function()? create,
  }) {
    return getAppointments?.call(firstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getType,
    TResult Function(bool firstFetch)? getAppointments,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (getAppointments != null) {
      return getAppointments(firstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetType value) getType,
    required TResult Function(_GetAppointments value) getAppointments,
    required TResult Function(_CreateAppointment value) create,
  }) {
    return getAppointments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetType value)? getType,
    TResult? Function(_GetAppointments value)? getAppointments,
    TResult? Function(_CreateAppointment value)? create,
  }) {
    return getAppointments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetType value)? getType,
    TResult Function(_GetAppointments value)? getAppointments,
    TResult Function(_CreateAppointment value)? create,
    required TResult orElse(),
  }) {
    if (getAppointments != null) {
      return getAppointments(this);
    }
    return orElse();
  }
}

abstract class _GetAppointments implements AppointmentEvent {
  const factory _GetAppointments(final bool firstFetch) = _$GetAppointmentsImpl;

  bool get firstFetch;

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAppointmentsImplCopyWith<_$GetAppointmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateAppointmentImplCopyWith<$Res> {
  factory _$$CreateAppointmentImplCopyWith(_$CreateAppointmentImpl value,
          $Res Function(_$CreateAppointmentImpl) then) =
      __$$CreateAppointmentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$CreateAppointmentImpl>
    implements _$$CreateAppointmentImplCopyWith<$Res> {
  __$$CreateAppointmentImplCopyWithImpl(_$CreateAppointmentImpl _value,
      $Res Function(_$CreateAppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateAppointmentImpl implements _CreateAppointment {
  const _$CreateAppointmentImpl();

  @override
  String toString() {
    return 'AppointmentEvent.create()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateAppointmentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getType,
    required TResult Function(bool firstFetch) getAppointments,
    required TResult Function() create,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getType,
    TResult? Function(bool firstFetch)? getAppointments,
    TResult? Function()? create,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getType,
    TResult Function(bool firstFetch)? getAppointments,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetType value) getType,
    required TResult Function(_GetAppointments value) getAppointments,
    required TResult Function(_CreateAppointment value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetType value)? getType,
    TResult? Function(_GetAppointments value)? getAppointments,
    TResult? Function(_CreateAppointment value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetType value)? getType,
    TResult Function(_GetAppointments value)? getAppointments,
    TResult Function(_CreateAppointment value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateAppointment implements AppointmentEvent {
  const factory _CreateAppointment() = _$CreateAppointmentImpl;
}

/// @nodoc
mixin _$AppointmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentState
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
    extends _$AppointmentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppointmentState.initial()';
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
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
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
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
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
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
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
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppointmentState {
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
    extends _$AppointmentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppointmentState.loading()';
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
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
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
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
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
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
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
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppointmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasicModel> appointmentType});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentType = null,
  }) {
    return _then(_$LoadedImpl(
      null == appointmentType
          ? _value._appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as List<BasicModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<BasicModel> appointmentType)
      : _appointmentType = appointmentType;

  final List<BasicModel> _appointmentType;
  @override
  List<BasicModel> get appointmentType {
    if (_appointmentType is EqualUnmodifiableListView) return _appointmentType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointmentType);
  }

  @override
  String toString() {
    return 'AppointmentState.loaded(appointmentType: $appointmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._appointmentType, _appointmentType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_appointmentType));

  /// Create a copy of AppointmentState
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
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return loaded(appointmentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loaded?.call(appointmentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(appointmentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
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
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
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
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AppointmentState {
  const factory _Loaded(final List<BasicModel> appointmentType) = _$LoadedImpl;

  List<BasicModel> get appointmentType;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentsLoadedImplCopyWith<$Res> {
  factory _$$AppointmentsLoadedImplCopyWith(_$AppointmentsLoadedImpl value,
          $Res Function(_$AppointmentsLoadedImpl) then) =
      __$$AppointmentsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Appointment> appointments, bool hasReachMax});
}

/// @nodoc
class __$$AppointmentsLoadedImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$AppointmentsLoadedImpl>
    implements _$$AppointmentsLoadedImplCopyWith<$Res> {
  __$$AppointmentsLoadedImplCopyWithImpl(_$AppointmentsLoadedImpl _value,
      $Res Function(_$AppointmentsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = null,
    Object? hasReachMax = null,
  }) {
    return _then(_$AppointmentsLoadedImpl(
      null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      null == hasReachMax
          ? _value.hasReachMax
          : hasReachMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppointmentsLoadedImpl implements _AppointmentsLoaded {
  const _$AppointmentsLoadedImpl(
      final List<Appointment> appointments, this.hasReachMax)
      : _appointments = appointments;

  final List<Appointment> _appointments;
  @override
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  final bool hasReachMax;

  @override
  String toString() {
    return 'AppointmentState.appointmentsLoaded(appointments: $appointments, hasReachMax: $hasReachMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.hasReachMax, hasReachMax) ||
                other.hasReachMax == hasReachMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_appointments), hasReachMax);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentsLoadedImplCopyWith<_$AppointmentsLoadedImpl> get copyWith =>
      __$$AppointmentsLoadedImplCopyWithImpl<_$AppointmentsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return appointmentsLoaded(appointments, hasReachMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return appointmentsLoaded?.call(appointments, hasReachMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (appointmentsLoaded != null) {
      return appointmentsLoaded(appointments, hasReachMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
  }) {
    return appointmentsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
  }) {
    return appointmentsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (appointmentsLoaded != null) {
      return appointmentsLoaded(this);
    }
    return orElse();
  }
}

abstract class _AppointmentsLoaded implements AppointmentState {
  const factory _AppointmentsLoaded(
          final List<Appointment> appointments, final bool hasReachMax) =
      _$AppointmentsLoadedImpl;

  List<Appointment> get appointments;
  bool get hasReachMax;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentsLoadedImplCopyWith<_$AppointmentsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateSuccessfullyImplCopyWith<$Res> {
  factory _$$CreateSuccessfullyImplCopyWith(_$CreateSuccessfullyImpl value,
          $Res Function(_$CreateSuccessfullyImpl) then) =
      __$$CreateSuccessfullyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateSuccessfullyImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$CreateSuccessfullyImpl>
    implements _$$CreateSuccessfullyImplCopyWith<$Res> {
  __$$CreateSuccessfullyImplCopyWithImpl(_$CreateSuccessfullyImpl _value,
      $Res Function(_$CreateSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateSuccessfullyImpl implements _CreateSuccessfully {
  const _$CreateSuccessfullyImpl();

  @override
  String toString() {
    return 'AppointmentState.createSuccessfully()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateSuccessfullyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return createSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return createSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (createSuccessfully != null) {
      return createSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
  }) {
    return createSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
  }) {
    return createSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (createSuccessfully != null) {
      return createSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccessfully implements AppointmentState {
  const factory _CreateSuccessfully() = _$CreateSuccessfullyImpl;
}

/// @nodoc
abstract class _$$CreateLoadingImplCopyWith<$Res> {
  factory _$$CreateLoadingImplCopyWith(
          _$CreateLoadingImpl value, $Res Function(_$CreateLoadingImpl) then) =
      __$$CreateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateLoadingImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$CreateLoadingImpl>
    implements _$$CreateLoadingImplCopyWith<$Res> {
  __$$CreateLoadingImplCopyWithImpl(
      _$CreateLoadingImpl _value, $Res Function(_$CreateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateLoadingImpl implements _CreateLoading {
  const _$CreateLoadingImpl();

  @override
  String toString() {
    return 'AppointmentState.createLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return createLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return createLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (createLoading != null) {
      return createLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
  }) {
    return createLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
  }) {
    return createLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (createLoading != null) {
      return createLoading(this);
    }
    return orElse();
  }
}

abstract class _CreateLoading implements AppointmentState {
  const factory _CreateLoading() = _$CreateLoadingImpl;
}

/// @nodoc
abstract class _$$InvalidParametersImplCopyWith<$Res> {
  factory _$$InvalidParametersImplCopyWith(_$InvalidParametersImpl value,
          $Res Function(_$InvalidParametersImpl) then) =
      __$$InvalidParametersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String validationMessage});
}

/// @nodoc
class __$$InvalidParametersImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$InvalidParametersImpl>
    implements _$$InvalidParametersImplCopyWith<$Res> {
  __$$InvalidParametersImplCopyWithImpl(_$InvalidParametersImpl _value,
      $Res Function(_$InvalidParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationMessage = null,
  }) {
    return _then(_$InvalidParametersImpl(
      null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidParametersImpl implements _InvalidParameters {
  const _$InvalidParametersImpl(this.validationMessage);

  @override
  final String validationMessage;

  @override
  String toString() {
    return 'AppointmentState.invalidParameters(validationMessage: $validationMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParametersImpl &&
            (identical(other.validationMessage, validationMessage) ||
                other.validationMessage == validationMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationMessage);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidParametersImplCopyWith<_$InvalidParametersImpl> get copyWith =>
      __$$InvalidParametersImplCopyWithImpl<_$InvalidParametersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return invalidParameters(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return invalidParameters?.call(validationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(validationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
    required TResult Function(_Failed value) failed,
  }) {
    return invalidParameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
    TResult? Function(_Failed value)? failed,
  }) {
    return invalidParameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (invalidParameters != null) {
      return invalidParameters(this);
    }
    return orElse();
  }
}

abstract class _InvalidParameters implements AppointmentState {
  const factory _InvalidParameters(final String validationMessage) =
      _$InvalidParametersImpl;

  String get validationMessage;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidParametersImplCopyWith<_$InvalidParametersImpl> get copyWith =>
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
    extends _$AppointmentStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
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
    return 'AppointmentState.failed(errorMessage: $errorMessage)';
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

  /// Create a copy of AppointmentState
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
    required TResult Function(List<BasicModel> appointmentType) loaded,
    required TResult Function(List<Appointment> appointments, bool hasReachMax)
        appointmentsLoaded,
    required TResult Function() createSuccessfully,
    required TResult Function() createLoading,
    required TResult Function(String validationMessage) invalidParameters,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BasicModel> appointmentType)? loaded,
    TResult? Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult? Function()? createSuccessfully,
    TResult? Function()? createLoading,
    TResult? Function(String validationMessage)? invalidParameters,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BasicModel> appointmentType)? loaded,
    TResult Function(List<Appointment> appointments, bool hasReachMax)?
        appointmentsLoaded,
    TResult Function()? createSuccessfully,
    TResult Function()? createLoading,
    TResult Function(String validationMessage)? invalidParameters,
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
    required TResult Function(_AppointmentsLoaded value) appointmentsLoaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_InvalidParameters value) invalidParameters,
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
    TResult? Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_InvalidParameters value)? invalidParameters,
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
    TResult Function(_AppointmentsLoaded value)? appointmentsLoaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_InvalidParameters value)? invalidParameters,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AppointmentState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
