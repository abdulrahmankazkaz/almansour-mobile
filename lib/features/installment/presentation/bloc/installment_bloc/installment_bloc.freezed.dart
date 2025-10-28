// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'installment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InstallmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Installment installmentInfo) setInstallmentInfo,
    required TResult Function() getRequiredDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Installment installmentInfo)? setInstallmentInfo,
    TResult? Function()? getRequiredDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Installment installmentInfo)? setInstallmentInfo,
    TResult Function()? getRequiredDocuments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetInstallmentInfo value) setInstallmentInfo,
    required TResult Function(_GetRequiredDocuments value) getRequiredDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult? Function(_GetRequiredDocuments value)? getRequiredDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult Function(_GetRequiredDocuments value)? getRequiredDocuments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallmentEventCopyWith<$Res> {
  factory $InstallmentEventCopyWith(
          InstallmentEvent value, $Res Function(InstallmentEvent) then) =
      _$InstallmentEventCopyWithImpl<$Res, InstallmentEvent>;
}

/// @nodoc
class _$InstallmentEventCopyWithImpl<$Res, $Val extends InstallmentEvent>
    implements $InstallmentEventCopyWith<$Res> {
  _$InstallmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstallmentEvent
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
    extends _$InstallmentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'InstallmentEvent.started()';
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
    required TResult Function(Installment installmentInfo) setInstallmentInfo,
    required TResult Function() getRequiredDocuments,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Installment installmentInfo)? setInstallmentInfo,
    TResult? Function()? getRequiredDocuments,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Installment installmentInfo)? setInstallmentInfo,
    TResult Function()? getRequiredDocuments,
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
    required TResult Function(_SetInstallmentInfo value) setInstallmentInfo,
    required TResult Function(_GetRequiredDocuments value) getRequiredDocuments,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult? Function(_GetRequiredDocuments value)? getRequiredDocuments,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult Function(_GetRequiredDocuments value)? getRequiredDocuments,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements InstallmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetInstallmentInfoImplCopyWith<$Res> {
  factory _$$SetInstallmentInfoImplCopyWith(_$SetInstallmentInfoImpl value,
          $Res Function(_$SetInstallmentInfoImpl) then) =
      __$$SetInstallmentInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Installment installmentInfo});

  $InstallmentCopyWith<$Res> get installmentInfo;
}

/// @nodoc
class __$$SetInstallmentInfoImplCopyWithImpl<$Res>
    extends _$InstallmentEventCopyWithImpl<$Res, _$SetInstallmentInfoImpl>
    implements _$$SetInstallmentInfoImplCopyWith<$Res> {
  __$$SetInstallmentInfoImplCopyWithImpl(_$SetInstallmentInfoImpl _value,
      $Res Function(_$SetInstallmentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installmentInfo = null,
  }) {
    return _then(_$SetInstallmentInfoImpl(
      null == installmentInfo
          ? _value.installmentInfo
          : installmentInfo // ignore: cast_nullable_to_non_nullable
              as Installment,
    ));
  }

  /// Create a copy of InstallmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InstallmentCopyWith<$Res> get installmentInfo {
    return $InstallmentCopyWith<$Res>(_value.installmentInfo, (value) {
      return _then(_value.copyWith(installmentInfo: value));
    });
  }
}

/// @nodoc

class _$SetInstallmentInfoImpl implements _SetInstallmentInfo {
  const _$SetInstallmentInfoImpl(this.installmentInfo);

  @override
  final Installment installmentInfo;

  @override
  String toString() {
    return 'InstallmentEvent.setInstallmentInfo(installmentInfo: $installmentInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInstallmentInfoImpl &&
            (identical(other.installmentInfo, installmentInfo) ||
                other.installmentInfo == installmentInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, installmentInfo);

  /// Create a copy of InstallmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInstallmentInfoImplCopyWith<_$SetInstallmentInfoImpl> get copyWith =>
      __$$SetInstallmentInfoImplCopyWithImpl<_$SetInstallmentInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Installment installmentInfo) setInstallmentInfo,
    required TResult Function() getRequiredDocuments,
  }) {
    return setInstallmentInfo(installmentInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Installment installmentInfo)? setInstallmentInfo,
    TResult? Function()? getRequiredDocuments,
  }) {
    return setInstallmentInfo?.call(installmentInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Installment installmentInfo)? setInstallmentInfo,
    TResult Function()? getRequiredDocuments,
    required TResult orElse(),
  }) {
    if (setInstallmentInfo != null) {
      return setInstallmentInfo(installmentInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetInstallmentInfo value) setInstallmentInfo,
    required TResult Function(_GetRequiredDocuments value) getRequiredDocuments,
  }) {
    return setInstallmentInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult? Function(_GetRequiredDocuments value)? getRequiredDocuments,
  }) {
    return setInstallmentInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult Function(_GetRequiredDocuments value)? getRequiredDocuments,
    required TResult orElse(),
  }) {
    if (setInstallmentInfo != null) {
      return setInstallmentInfo(this);
    }
    return orElse();
  }
}

abstract class _SetInstallmentInfo implements InstallmentEvent {
  const factory _SetInstallmentInfo(final Installment installmentInfo) =
      _$SetInstallmentInfoImpl;

  Installment get installmentInfo;

  /// Create a copy of InstallmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetInstallmentInfoImplCopyWith<_$SetInstallmentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRequiredDocumentsImplCopyWith<$Res> {
  factory _$$GetRequiredDocumentsImplCopyWith(_$GetRequiredDocumentsImpl value,
          $Res Function(_$GetRequiredDocumentsImpl) then) =
      __$$GetRequiredDocumentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRequiredDocumentsImplCopyWithImpl<$Res>
    extends _$InstallmentEventCopyWithImpl<$Res, _$GetRequiredDocumentsImpl>
    implements _$$GetRequiredDocumentsImplCopyWith<$Res> {
  __$$GetRequiredDocumentsImplCopyWithImpl(_$GetRequiredDocumentsImpl _value,
      $Res Function(_$GetRequiredDocumentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetRequiredDocumentsImpl implements _GetRequiredDocuments {
  const _$GetRequiredDocumentsImpl();

  @override
  String toString() {
    return 'InstallmentEvent.getRequiredDocuments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRequiredDocumentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Installment installmentInfo) setInstallmentInfo,
    required TResult Function() getRequiredDocuments,
  }) {
    return getRequiredDocuments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Installment installmentInfo)? setInstallmentInfo,
    TResult? Function()? getRequiredDocuments,
  }) {
    return getRequiredDocuments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Installment installmentInfo)? setInstallmentInfo,
    TResult Function()? getRequiredDocuments,
    required TResult orElse(),
  }) {
    if (getRequiredDocuments != null) {
      return getRequiredDocuments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetInstallmentInfo value) setInstallmentInfo,
    required TResult Function(_GetRequiredDocuments value) getRequiredDocuments,
  }) {
    return getRequiredDocuments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult? Function(_GetRequiredDocuments value)? getRequiredDocuments,
  }) {
    return getRequiredDocuments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetInstallmentInfo value)? setInstallmentInfo,
    TResult Function(_GetRequiredDocuments value)? getRequiredDocuments,
    required TResult orElse(),
  }) {
    if (getRequiredDocuments != null) {
      return getRequiredDocuments(this);
    }
    return orElse();
  }
}

abstract class _GetRequiredDocuments implements InstallmentEvent {
  const factory _GetRequiredDocuments() = _$GetRequiredDocumentsImpl;
}

/// @nodoc
mixin _$InstallmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Installment installmentInfo) loaded,
    required TResult Function() loading,
    required TResult Function(List<InstallmentRequirement> requiredDocuments)
        requiredDocumentsLoaded,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Installment installmentInfo)? loaded,
    TResult? Function()? loading,
    TResult? Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Installment installmentInfo)? loaded,
    TResult Function()? loading,
    TResult Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequiredDocumentsLoaded value)
        requiredDocumentsLoaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallmentStateCopyWith<$Res> {
  factory $InstallmentStateCopyWith(
          InstallmentState value, $Res Function(InstallmentState) then) =
      _$InstallmentStateCopyWithImpl<$Res, InstallmentState>;
}

/// @nodoc
class _$InstallmentStateCopyWithImpl<$Res, $Val extends InstallmentState>
    implements $InstallmentStateCopyWith<$Res> {
  _$InstallmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstallmentState
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
    extends _$InstallmentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'InstallmentState.initial()';
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
    required TResult Function(Installment installmentInfo) loaded,
    required TResult Function() loading,
    required TResult Function(List<InstallmentRequirement> requiredDocuments)
        requiredDocumentsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Installment installmentInfo)? loaded,
    TResult? Function()? loading,
    TResult? Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Installment installmentInfo)? loaded,
    TResult Function()? loading,
    TResult Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequiredDocumentsLoaded value)
        requiredDocumentsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InstallmentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Installment installmentInfo});

  $InstallmentCopyWith<$Res> get installmentInfo;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$InstallmentStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? installmentInfo = null,
  }) {
    return _then(_$LoadedImpl(
      null == installmentInfo
          ? _value.installmentInfo
          : installmentInfo // ignore: cast_nullable_to_non_nullable
              as Installment,
    ));
  }

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InstallmentCopyWith<$Res> get installmentInfo {
    return $InstallmentCopyWith<$Res>(_value.installmentInfo, (value) {
      return _then(_value.copyWith(installmentInfo: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.installmentInfo);

  @override
  final Installment installmentInfo;

  @override
  String toString() {
    return 'InstallmentState.loaded(installmentInfo: $installmentInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.installmentInfo, installmentInfo) ||
                other.installmentInfo == installmentInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, installmentInfo);

  /// Create a copy of InstallmentState
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
    required TResult Function(Installment installmentInfo) loaded,
    required TResult Function() loading,
    required TResult Function(List<InstallmentRequirement> requiredDocuments)
        requiredDocumentsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loaded(installmentInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Installment installmentInfo)? loaded,
    TResult? Function()? loading,
    TResult? Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loaded?.call(installmentInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Installment installmentInfo)? loaded,
    TResult Function()? loading,
    TResult Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(installmentInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequiredDocumentsLoaded value)
        requiredDocumentsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements InstallmentState {
  const factory _Loaded(final Installment installmentInfo) = _$LoadedImpl;

  Installment get installmentInfo;

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$InstallmentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'InstallmentState.loading()';
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
    required TResult Function(Installment installmentInfo) loaded,
    required TResult Function() loading,
    required TResult Function(List<InstallmentRequirement> requiredDocuments)
        requiredDocumentsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Installment installmentInfo)? loaded,
    TResult? Function()? loading,
    TResult? Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Installment installmentInfo)? loaded,
    TResult Function()? loading,
    TResult Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequiredDocumentsLoaded value)
        requiredDocumentsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InstallmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$RequiredDocumentsLoadedImplCopyWith<$Res> {
  factory _$$RequiredDocumentsLoadedImplCopyWith(
          _$RequiredDocumentsLoadedImpl value,
          $Res Function(_$RequiredDocumentsLoadedImpl) then) =
      __$$RequiredDocumentsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InstallmentRequirement> requiredDocuments});
}

/// @nodoc
class __$$RequiredDocumentsLoadedImplCopyWithImpl<$Res>
    extends _$InstallmentStateCopyWithImpl<$Res, _$RequiredDocumentsLoadedImpl>
    implements _$$RequiredDocumentsLoadedImplCopyWith<$Res> {
  __$$RequiredDocumentsLoadedImplCopyWithImpl(
      _$RequiredDocumentsLoadedImpl _value,
      $Res Function(_$RequiredDocumentsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredDocuments = null,
  }) {
    return _then(_$RequiredDocumentsLoadedImpl(
      null == requiredDocuments
          ? _value._requiredDocuments
          : requiredDocuments // ignore: cast_nullable_to_non_nullable
              as List<InstallmentRequirement>,
    ));
  }
}

/// @nodoc

class _$RequiredDocumentsLoadedImpl implements _RequiredDocumentsLoaded {
  const _$RequiredDocumentsLoadedImpl(
      final List<InstallmentRequirement> requiredDocuments)
      : _requiredDocuments = requiredDocuments;

  final List<InstallmentRequirement> _requiredDocuments;
  @override
  List<InstallmentRequirement> get requiredDocuments {
    if (_requiredDocuments is EqualUnmodifiableListView)
      return _requiredDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredDocuments);
  }

  @override
  String toString() {
    return 'InstallmentState.requiredDocumentsLoaded(requiredDocuments: $requiredDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredDocumentsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._requiredDocuments, _requiredDocuments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_requiredDocuments));

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredDocumentsLoadedImplCopyWith<_$RequiredDocumentsLoadedImpl>
      get copyWith => __$$RequiredDocumentsLoadedImplCopyWithImpl<
          _$RequiredDocumentsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Installment installmentInfo) loaded,
    required TResult Function() loading,
    required TResult Function(List<InstallmentRequirement> requiredDocuments)
        requiredDocumentsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return requiredDocumentsLoaded(requiredDocuments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Installment installmentInfo)? loaded,
    TResult? Function()? loading,
    TResult? Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return requiredDocumentsLoaded?.call(requiredDocuments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Installment installmentInfo)? loaded,
    TResult Function()? loading,
    TResult Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (requiredDocumentsLoaded != null) {
      return requiredDocumentsLoaded(requiredDocuments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequiredDocumentsLoaded value)
        requiredDocumentsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return requiredDocumentsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return requiredDocumentsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (requiredDocumentsLoaded != null) {
      return requiredDocumentsLoaded(this);
    }
    return orElse();
  }
}

abstract class _RequiredDocumentsLoaded implements InstallmentState {
  const factory _RequiredDocumentsLoaded(
          final List<InstallmentRequirement> requiredDocuments) =
      _$RequiredDocumentsLoadedImpl;

  List<InstallmentRequirement> get requiredDocuments;

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequiredDocumentsLoadedImplCopyWith<_$RequiredDocumentsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$InstallmentStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentState
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
    return 'InstallmentState.failed(errorMessage: $errorMessage)';
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

  /// Create a copy of InstallmentState
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
    required TResult Function(Installment installmentInfo) loaded,
    required TResult Function() loading,
    required TResult Function(List<InstallmentRequirement> requiredDocuments)
        requiredDocumentsLoaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Installment installmentInfo)? loaded,
    TResult? Function()? loading,
    TResult? Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Installment installmentInfo)? loaded,
    TResult Function()? loading,
    TResult Function(List<InstallmentRequirement> requiredDocuments)?
        requiredDocumentsLoaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequiredDocumentsLoaded value)
        requiredDocumentsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequiredDocumentsLoaded value)? requiredDocumentsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements InstallmentState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of InstallmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
