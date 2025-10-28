// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BasicModel type) selectType,
    required TResult Function(Appointment appointment) selectAppointment,
    required TResult Function(ApproveUpdatedAppointmentParameters parameters)
        approveUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BasicModel type)? selectType,
    TResult? Function(Appointment appointment)? selectAppointment,
    TResult? Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BasicModel type)? selectType,
    TResult Function(Appointment appointment)? selectAppointment,
    TResult Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_SelectAppointment value) selectAppointment,
    required TResult Function(_ApproveUpdated value) approveUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_SelectAppointment value)? selectAppointment,
    TResult? Function(_ApproveUpdated value)? approveUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_SelectAppointment value)? selectAppointment,
    TResult Function(_ApproveUpdated value)? approveUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailsEventCopyWith<$Res> {
  factory $AppointmentDetailsEventCopyWith(AppointmentDetailsEvent value,
          $Res Function(AppointmentDetailsEvent) then) =
      _$AppointmentDetailsEventCopyWithImpl<$Res, AppointmentDetailsEvent>;
}

/// @nodoc
class _$AppointmentDetailsEventCopyWithImpl<$Res,
        $Val extends AppointmentDetailsEvent>
    implements $AppointmentDetailsEventCopyWith<$Res> {
  _$AppointmentDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDetailsEvent
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
    extends _$AppointmentDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppointmentDetailsEvent.started()';
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
    required TResult Function(BasicModel type) selectType,
    required TResult Function(Appointment appointment) selectAppointment,
    required TResult Function(ApproveUpdatedAppointmentParameters parameters)
        approveUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BasicModel type)? selectType,
    TResult? Function(Appointment appointment)? selectAppointment,
    TResult? Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BasicModel type)? selectType,
    TResult Function(Appointment appointment)? selectAppointment,
    TResult Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
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
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_SelectAppointment value) selectAppointment,
    required TResult Function(_ApproveUpdated value) approveUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_SelectAppointment value)? selectAppointment,
    TResult? Function(_ApproveUpdated value)? approveUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_SelectAppointment value)? selectAppointment,
    TResult Function(_ApproveUpdated value)? approveUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppointmentDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectTypeImplCopyWith<$Res> {
  factory _$$SelectTypeImplCopyWith(
          _$SelectTypeImpl value, $Res Function(_$SelectTypeImpl) then) =
      __$$SelectTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasicModel type});

  $BasicModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$SelectTypeImplCopyWithImpl<$Res>
    extends _$AppointmentDetailsEventCopyWithImpl<$Res, _$SelectTypeImpl>
    implements _$$SelectTypeImplCopyWith<$Res> {
  __$$SelectTypeImplCopyWithImpl(
      _$SelectTypeImpl _value, $Res Function(_$SelectTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SelectTypeImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
    ));
  }

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get type {
    return $BasicModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$SelectTypeImpl implements _SelectType {
  const _$SelectTypeImpl(this.type);

  @override
  final BasicModel type;

  @override
  String toString() {
    return 'AppointmentDetailsEvent.selectType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTypeImplCopyWith<_$SelectTypeImpl> get copyWith =>
      __$$SelectTypeImplCopyWithImpl<_$SelectTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BasicModel type) selectType,
    required TResult Function(Appointment appointment) selectAppointment,
    required TResult Function(ApproveUpdatedAppointmentParameters parameters)
        approveUpdated,
  }) {
    return selectType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BasicModel type)? selectType,
    TResult? Function(Appointment appointment)? selectAppointment,
    TResult? Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
  }) {
    return selectType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BasicModel type)? selectType,
    TResult Function(Appointment appointment)? selectAppointment,
    TResult Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
    required TResult orElse(),
  }) {
    if (selectType != null) {
      return selectType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_SelectAppointment value) selectAppointment,
    required TResult Function(_ApproveUpdated value) approveUpdated,
  }) {
    return selectType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_SelectAppointment value)? selectAppointment,
    TResult? Function(_ApproveUpdated value)? approveUpdated,
  }) {
    return selectType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_SelectAppointment value)? selectAppointment,
    TResult Function(_ApproveUpdated value)? approveUpdated,
    required TResult orElse(),
  }) {
    if (selectType != null) {
      return selectType(this);
    }
    return orElse();
  }
}

abstract class _SelectType implements AppointmentDetailsEvent {
  const factory _SelectType(final BasicModel type) = _$SelectTypeImpl;

  BasicModel get type;

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTypeImplCopyWith<_$SelectTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAppointmentImplCopyWith<$Res> {
  factory _$$SelectAppointmentImplCopyWith(_$SelectAppointmentImpl value,
          $Res Function(_$SelectAppointmentImpl) then) =
      __$$SelectAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Appointment appointment});

  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$SelectAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentDetailsEventCopyWithImpl<$Res, _$SelectAppointmentImpl>
    implements _$$SelectAppointmentImplCopyWith<$Res> {
  __$$SelectAppointmentImplCopyWithImpl(_$SelectAppointmentImpl _value,
      $Res Function(_$SelectAppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_$SelectAppointmentImpl(
      null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get appointment {
    return $AppointmentCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _$SelectAppointmentImpl implements _SelectAppointment {
  const _$SelectAppointmentImpl(this.appointment);

  @override
  final Appointment appointment;

  @override
  String toString() {
    return 'AppointmentDetailsEvent.selectAppointment(appointment: $appointment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAppointmentImpl &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAppointmentImplCopyWith<_$SelectAppointmentImpl> get copyWith =>
      __$$SelectAppointmentImplCopyWithImpl<_$SelectAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BasicModel type) selectType,
    required TResult Function(Appointment appointment) selectAppointment,
    required TResult Function(ApproveUpdatedAppointmentParameters parameters)
        approveUpdated,
  }) {
    return selectAppointment(appointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BasicModel type)? selectType,
    TResult? Function(Appointment appointment)? selectAppointment,
    TResult? Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
  }) {
    return selectAppointment?.call(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BasicModel type)? selectType,
    TResult Function(Appointment appointment)? selectAppointment,
    TResult Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
    required TResult orElse(),
  }) {
    if (selectAppointment != null) {
      return selectAppointment(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_SelectAppointment value) selectAppointment,
    required TResult Function(_ApproveUpdated value) approveUpdated,
  }) {
    return selectAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_SelectAppointment value)? selectAppointment,
    TResult? Function(_ApproveUpdated value)? approveUpdated,
  }) {
    return selectAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_SelectAppointment value)? selectAppointment,
    TResult Function(_ApproveUpdated value)? approveUpdated,
    required TResult orElse(),
  }) {
    if (selectAppointment != null) {
      return selectAppointment(this);
    }
    return orElse();
  }
}

abstract class _SelectAppointment implements AppointmentDetailsEvent {
  const factory _SelectAppointment(final Appointment appointment) =
      _$SelectAppointmentImpl;

  Appointment get appointment;

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAppointmentImplCopyWith<_$SelectAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproveUpdatedImplCopyWith<$Res> {
  factory _$$ApproveUpdatedImplCopyWith(_$ApproveUpdatedImpl value,
          $Res Function(_$ApproveUpdatedImpl) then) =
      __$$ApproveUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApproveUpdatedAppointmentParameters parameters});
}

/// @nodoc
class __$$ApproveUpdatedImplCopyWithImpl<$Res>
    extends _$AppointmentDetailsEventCopyWithImpl<$Res, _$ApproveUpdatedImpl>
    implements _$$ApproveUpdatedImplCopyWith<$Res> {
  __$$ApproveUpdatedImplCopyWithImpl(
      _$ApproveUpdatedImpl _value, $Res Function(_$ApproveUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameters = null,
  }) {
    return _then(_$ApproveUpdatedImpl(
      null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ApproveUpdatedAppointmentParameters,
    ));
  }
}

/// @nodoc

class _$ApproveUpdatedImpl implements _ApproveUpdated {
  const _$ApproveUpdatedImpl(this.parameters);

  @override
  final ApproveUpdatedAppointmentParameters parameters;

  @override
  String toString() {
    return 'AppointmentDetailsEvent.approveUpdated(parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveUpdatedImpl &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parameters);

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveUpdatedImplCopyWith<_$ApproveUpdatedImpl> get copyWith =>
      __$$ApproveUpdatedImplCopyWithImpl<_$ApproveUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BasicModel type) selectType,
    required TResult Function(Appointment appointment) selectAppointment,
    required TResult Function(ApproveUpdatedAppointmentParameters parameters)
        approveUpdated,
  }) {
    return approveUpdated(parameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BasicModel type)? selectType,
    TResult? Function(Appointment appointment)? selectAppointment,
    TResult? Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
  }) {
    return approveUpdated?.call(parameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BasicModel type)? selectType,
    TResult Function(Appointment appointment)? selectAppointment,
    TResult Function(ApproveUpdatedAppointmentParameters parameters)?
        approveUpdated,
    required TResult orElse(),
  }) {
    if (approveUpdated != null) {
      return approveUpdated(parameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectType value) selectType,
    required TResult Function(_SelectAppointment value) selectAppointment,
    required TResult Function(_ApproveUpdated value) approveUpdated,
  }) {
    return approveUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectType value)? selectType,
    TResult? Function(_SelectAppointment value)? selectAppointment,
    TResult? Function(_ApproveUpdated value)? approveUpdated,
  }) {
    return approveUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectType value)? selectType,
    TResult Function(_SelectAppointment value)? selectAppointment,
    TResult Function(_ApproveUpdated value)? approveUpdated,
    required TResult orElse(),
  }) {
    if (approveUpdated != null) {
      return approveUpdated(this);
    }
    return orElse();
  }
}

abstract class _ApproveUpdated implements AppointmentDetailsEvent {
  const factory _ApproveUpdated(
          final ApproveUpdatedAppointmentParameters parameters) =
      _$ApproveUpdatedImpl;

  ApproveUpdatedAppointmentParameters get parameters;

  /// Create a copy of AppointmentDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveUpdatedImplCopyWith<_$ApproveUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BasicModel type) typeSelected,
    required TResult Function(Appointment appointment) appointmentSelected,
    required TResult Function(String failedMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BasicModel type)? typeSelected,
    TResult? Function(Appointment appointment)? appointmentSelected,
    TResult? Function(String failedMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BasicModel type)? typeSelected,
    TResult Function(Appointment appointment)? appointmentSelected,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TypeSelected value) typeSelected,
    required TResult Function(_AppointmentSelected value) appointmentSelected,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TypeSelected value)? typeSelected,
    TResult? Function(_AppointmentSelected value)? appointmentSelected,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TypeSelected value)? typeSelected,
    TResult Function(_AppointmentSelected value)? appointmentSelected,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailsStateCopyWith<$Res> {
  factory $AppointmentDetailsStateCopyWith(AppointmentDetailsState value,
          $Res Function(AppointmentDetailsState) then) =
      _$AppointmentDetailsStateCopyWithImpl<$Res, AppointmentDetailsState>;
}

/// @nodoc
class _$AppointmentDetailsStateCopyWithImpl<$Res,
        $Val extends AppointmentDetailsState>
    implements $AppointmentDetailsStateCopyWith<$Res> {
  _$AppointmentDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDetailsState
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
    extends _$AppointmentDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppointmentDetailsState.initial()';
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
    required TResult Function(BasicModel type) typeSelected,
    required TResult Function(Appointment appointment) appointmentSelected,
    required TResult Function(String failedMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BasicModel type)? typeSelected,
    TResult? Function(Appointment appointment)? appointmentSelected,
    TResult? Function(String failedMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BasicModel type)? typeSelected,
    TResult Function(Appointment appointment)? appointmentSelected,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_TypeSelected value) typeSelected,
    required TResult Function(_AppointmentSelected value) appointmentSelected,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TypeSelected value)? typeSelected,
    TResult? Function(_AppointmentSelected value)? appointmentSelected,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TypeSelected value)? typeSelected,
    TResult Function(_AppointmentSelected value)? appointmentSelected,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppointmentDetailsState {
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
    extends _$AppointmentDetailsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppointmentDetailsState.loading()';
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
    required TResult Function(BasicModel type) typeSelected,
    required TResult Function(Appointment appointment) appointmentSelected,
    required TResult Function(String failedMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BasicModel type)? typeSelected,
    TResult? Function(Appointment appointment)? appointmentSelected,
    TResult? Function(String failedMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BasicModel type)? typeSelected,
    TResult Function(Appointment appointment)? appointmentSelected,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_TypeSelected value) typeSelected,
    required TResult Function(_AppointmentSelected value) appointmentSelected,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TypeSelected value)? typeSelected,
    TResult? Function(_AppointmentSelected value)? appointmentSelected,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TypeSelected value)? typeSelected,
    TResult Function(_AppointmentSelected value)? appointmentSelected,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppointmentDetailsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$TypeSelectedImplCopyWith<$Res> {
  factory _$$TypeSelectedImplCopyWith(
          _$TypeSelectedImpl value, $Res Function(_$TypeSelectedImpl) then) =
      __$$TypeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasicModel type});

  $BasicModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypeSelectedImplCopyWithImpl<$Res>
    extends _$AppointmentDetailsStateCopyWithImpl<$Res, _$TypeSelectedImpl>
    implements _$$TypeSelectedImplCopyWith<$Res> {
  __$$TypeSelectedImplCopyWithImpl(
      _$TypeSelectedImpl _value, $Res Function(_$TypeSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$TypeSelectedImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
    ));
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get type {
    return $BasicModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$TypeSelectedImpl implements _TypeSelected {
  const _$TypeSelectedImpl(this.type);

  @override
  final BasicModel type;

  @override
  String toString() {
    return 'AppointmentDetailsState.typeSelected(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeSelectedImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeSelectedImplCopyWith<_$TypeSelectedImpl> get copyWith =>
      __$$TypeSelectedImplCopyWithImpl<_$TypeSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BasicModel type) typeSelected,
    required TResult Function(Appointment appointment) appointmentSelected,
    required TResult Function(String failedMessage) failed,
  }) {
    return typeSelected(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BasicModel type)? typeSelected,
    TResult? Function(Appointment appointment)? appointmentSelected,
    TResult? Function(String failedMessage)? failed,
  }) {
    return typeSelected?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BasicModel type)? typeSelected,
    TResult Function(Appointment appointment)? appointmentSelected,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (typeSelected != null) {
      return typeSelected(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TypeSelected value) typeSelected,
    required TResult Function(_AppointmentSelected value) appointmentSelected,
    required TResult Function(_Failed value) failed,
  }) {
    return typeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TypeSelected value)? typeSelected,
    TResult? Function(_AppointmentSelected value)? appointmentSelected,
    TResult? Function(_Failed value)? failed,
  }) {
    return typeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TypeSelected value)? typeSelected,
    TResult Function(_AppointmentSelected value)? appointmentSelected,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (typeSelected != null) {
      return typeSelected(this);
    }
    return orElse();
  }
}

abstract class _TypeSelected implements AppointmentDetailsState {
  const factory _TypeSelected(final BasicModel type) = _$TypeSelectedImpl;

  BasicModel get type;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeSelectedImplCopyWith<_$TypeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentSelectedImplCopyWith<$Res> {
  factory _$$AppointmentSelectedImplCopyWith(_$AppointmentSelectedImpl value,
          $Res Function(_$AppointmentSelectedImpl) then) =
      __$$AppointmentSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Appointment appointment});

  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$AppointmentSelectedImplCopyWithImpl<$Res>
    extends _$AppointmentDetailsStateCopyWithImpl<$Res,
        _$AppointmentSelectedImpl>
    implements _$$AppointmentSelectedImplCopyWith<$Res> {
  __$$AppointmentSelectedImplCopyWithImpl(_$AppointmentSelectedImpl _value,
      $Res Function(_$AppointmentSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_$AppointmentSelectedImpl(
      null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get appointment {
    return $AppointmentCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _$AppointmentSelectedImpl implements _AppointmentSelected {
  const _$AppointmentSelectedImpl(this.appointment);

  @override
  final Appointment appointment;

  @override
  String toString() {
    return 'AppointmentDetailsState.appointmentSelected(appointment: $appointment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentSelectedImpl &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment);

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentSelectedImplCopyWith<_$AppointmentSelectedImpl> get copyWith =>
      __$$AppointmentSelectedImplCopyWithImpl<_$AppointmentSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BasicModel type) typeSelected,
    required TResult Function(Appointment appointment) appointmentSelected,
    required TResult Function(String failedMessage) failed,
  }) {
    return appointmentSelected(appointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BasicModel type)? typeSelected,
    TResult? Function(Appointment appointment)? appointmentSelected,
    TResult? Function(String failedMessage)? failed,
  }) {
    return appointmentSelected?.call(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BasicModel type)? typeSelected,
    TResult Function(Appointment appointment)? appointmentSelected,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (appointmentSelected != null) {
      return appointmentSelected(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TypeSelected value) typeSelected,
    required TResult Function(_AppointmentSelected value) appointmentSelected,
    required TResult Function(_Failed value) failed,
  }) {
    return appointmentSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TypeSelected value)? typeSelected,
    TResult? Function(_AppointmentSelected value)? appointmentSelected,
    TResult? Function(_Failed value)? failed,
  }) {
    return appointmentSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TypeSelected value)? typeSelected,
    TResult Function(_AppointmentSelected value)? appointmentSelected,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (appointmentSelected != null) {
      return appointmentSelected(this);
    }
    return orElse();
  }
}

abstract class _AppointmentSelected implements AppointmentDetailsState {
  const factory _AppointmentSelected(final Appointment appointment) =
      _$AppointmentSelectedImpl;

  Appointment get appointment;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentSelectedImplCopyWith<_$AppointmentSelectedImpl> get copyWith =>
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
    extends _$AppointmentDetailsStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsState
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
    return 'AppointmentDetailsState.failed(failedMessage: $failedMessage)';
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

  /// Create a copy of AppointmentDetailsState
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
    required TResult Function(BasicModel type) typeSelected,
    required TResult Function(Appointment appointment) appointmentSelected,
    required TResult Function(String failedMessage) failed,
  }) {
    return failed(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BasicModel type)? typeSelected,
    TResult? Function(Appointment appointment)? appointmentSelected,
    TResult? Function(String failedMessage)? failed,
  }) {
    return failed?.call(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BasicModel type)? typeSelected,
    TResult Function(Appointment appointment)? appointmentSelected,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_TypeSelected value) typeSelected,
    required TResult Function(_AppointmentSelected value) appointmentSelected,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TypeSelected value)? typeSelected,
    TResult? Function(_AppointmentSelected value)? appointmentSelected,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TypeSelected value)? typeSelected,
    TResult Function(_AppointmentSelected value)? appointmentSelected,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AppointmentDetailsState {
  const factory _Failed(final String failedMessage) = _$FailedImpl;

  String get failedMessage;

  /// Create a copy of AppointmentDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
