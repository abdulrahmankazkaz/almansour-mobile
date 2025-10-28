// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MobileServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int streetId) createMobileService,
    required TResult Function() get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int streetId)? createMobileService,
    TResult? Function()? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int streetId)? createMobileService,
    TResult Function()? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateMobileService value) createMobileService,
    required TResult Function(_Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateMobileService value)? createMobileService,
    TResult? Function(_Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateMobileService value)? createMobileService,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileServiceEventCopyWith<$Res> {
  factory $MobileServiceEventCopyWith(
          MobileServiceEvent value, $Res Function(MobileServiceEvent) then) =
      _$MobileServiceEventCopyWithImpl<$Res, MobileServiceEvent>;
}

/// @nodoc
class _$MobileServiceEventCopyWithImpl<$Res, $Val extends MobileServiceEvent>
    implements $MobileServiceEventCopyWith<$Res> {
  _$MobileServiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileServiceEvent
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
    extends _$MobileServiceEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MobileServiceEvent.started()';
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
    required TResult Function(int streetId) createMobileService,
    required TResult Function() get,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int streetId)? createMobileService,
    TResult? Function()? get,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int streetId)? createMobileService,
    TResult Function()? get,
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
    required TResult Function(_CreateMobileService value) createMobileService,
    required TResult Function(_Get value) get,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateMobileService value)? createMobileService,
    TResult? Function(_Get value)? get,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateMobileService value)? createMobileService,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MobileServiceEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateMobileServiceImplCopyWith<$Res> {
  factory _$$CreateMobileServiceImplCopyWith(_$CreateMobileServiceImpl value,
          $Res Function(_$CreateMobileServiceImpl) then) =
      __$$CreateMobileServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int streetId});
}

/// @nodoc
class __$$CreateMobileServiceImplCopyWithImpl<$Res>
    extends _$MobileServiceEventCopyWithImpl<$Res, _$CreateMobileServiceImpl>
    implements _$$CreateMobileServiceImplCopyWith<$Res> {
  __$$CreateMobileServiceImplCopyWithImpl(_$CreateMobileServiceImpl _value,
      $Res Function(_$CreateMobileServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetId = null,
  }) {
    return _then(_$CreateMobileServiceImpl(
      null == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateMobileServiceImpl implements _CreateMobileService {
  const _$CreateMobileServiceImpl(this.streetId);

  @override
  final int streetId;

  @override
  String toString() {
    return 'MobileServiceEvent.createMobileService(streetId: $streetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMobileServiceImpl &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, streetId);

  /// Create a copy of MobileServiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMobileServiceImplCopyWith<_$CreateMobileServiceImpl> get copyWith =>
      __$$CreateMobileServiceImplCopyWithImpl<_$CreateMobileServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int streetId) createMobileService,
    required TResult Function() get,
  }) {
    return createMobileService(streetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int streetId)? createMobileService,
    TResult? Function()? get,
  }) {
    return createMobileService?.call(streetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int streetId)? createMobileService,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (createMobileService != null) {
      return createMobileService(streetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateMobileService value) createMobileService,
    required TResult Function(_Get value) get,
  }) {
    return createMobileService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateMobileService value)? createMobileService,
    TResult? Function(_Get value)? get,
  }) {
    return createMobileService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateMobileService value)? createMobileService,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (createMobileService != null) {
      return createMobileService(this);
    }
    return orElse();
  }
}

abstract class _CreateMobileService implements MobileServiceEvent {
  const factory _CreateMobileService(final int streetId) =
      _$CreateMobileServiceImpl;

  int get streetId;

  /// Create a copy of MobileServiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMobileServiceImplCopyWith<_$CreateMobileServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$MobileServiceEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetImpl implements _Get {
  const _$GetImpl();

  @override
  String toString() {
    return 'MobileServiceEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int streetId) createMobileService,
    required TResult Function() get,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int streetId)? createMobileService,
    TResult? Function()? get,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int streetId)? createMobileService,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateMobileService value) createMobileService,
    required TResult Function(_Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateMobileService value)? createMobileService,
    TResult? Function(_Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateMobileService value)? createMobileService,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements MobileServiceEvent {
  const factory _Get() = _$GetImpl;
}

/// @nodoc
mixin _$MobileServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileServiceStateCopyWith<$Res> {
  factory $MobileServiceStateCopyWith(
          MobileServiceState value, $Res Function(MobileServiceState) then) =
      _$MobileServiceStateCopyWithImpl<$Res, MobileServiceState>;
}

/// @nodoc
class _$MobileServiceStateCopyWithImpl<$Res, $Val extends MobileServiceState>
    implements $MobileServiceStateCopyWith<$Res> {
  _$MobileServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileServiceState
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
    extends _$MobileServiceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MobileServiceState.initial()';
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
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
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
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MobileServiceState {
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
    extends _$MobileServiceStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MobileServiceState.loading()';
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
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
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
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MobileServiceState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FetchLoadingImplCopyWith<$Res> {
  factory _$$FetchLoadingImplCopyWith(
          _$FetchLoadingImpl value, $Res Function(_$FetchLoadingImpl) then) =
      __$$FetchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchLoadingImplCopyWithImpl<$Res>
    extends _$MobileServiceStateCopyWithImpl<$Res, _$FetchLoadingImpl>
    implements _$$FetchLoadingImplCopyWith<$Res> {
  __$$FetchLoadingImplCopyWithImpl(
      _$FetchLoadingImpl _value, $Res Function(_$FetchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchLoadingImpl implements _FetchLoading {
  const _$FetchLoadingImpl();

  @override
  String toString() {
    return 'MobileServiceState.fetchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) {
    return fetchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) {
    return fetchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
    required TResult orElse(),
  }) {
    if (fetchLoading != null) {
      return fetchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) {
    return fetchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) {
    return fetchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) {
    if (fetchLoading != null) {
      return fetchLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchLoading implements MobileServiceState {
  const factory _FetchLoading() = _$FetchLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookedMobileService> mobileServices});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MobileServiceStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileServices = null,
  }) {
    return _then(_$LoadedImpl(
      null == mobileServices
          ? _value._mobileServices
          : mobileServices // ignore: cast_nullable_to_non_nullable
              as List<BookedMobileService>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<BookedMobileService> mobileServices)
      : _mobileServices = mobileServices;

  final List<BookedMobileService> _mobileServices;
  @override
  List<BookedMobileService> get mobileServices {
    if (_mobileServices is EqualUnmodifiableListView) return _mobileServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mobileServices);
  }

  @override
  String toString() {
    return 'MobileServiceState.loaded(mobileServices: $mobileServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._mobileServices, _mobileServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_mobileServices));

  /// Create a copy of MobileServiceState
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
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) {
    return loaded(mobileServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) {
    return loaded?.call(mobileServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(mobileServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MobileServiceState {
  const factory _Loaded(final List<BookedMobileService> mobileServices) =
      _$LoadedImpl;

  List<BookedMobileService> get mobileServices;

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$MobileServiceStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'MobileServiceState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements MobileServiceState {
  const factory _Empty() = _$EmptyImpl;
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
    extends _$MobileServiceStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceState
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
    return 'MobileServiceState.failed(errorMessage: $errorMessage)';
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

  /// Create a copy of MobileServiceState
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
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
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
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements MobileServiceState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
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
    extends _$MobileServiceStateCopyWithImpl<$Res, _$CreateSuccessfullyImpl>
    implements _$$CreateSuccessfullyImplCopyWith<$Res> {
  __$$CreateSuccessfullyImplCopyWithImpl(_$CreateSuccessfullyImpl _value,
      $Res Function(_$CreateSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateSuccessfullyImpl implements _CreateSuccessfully {
  const _$CreateSuccessfullyImpl();

  @override
  String toString() {
    return 'MobileServiceState.createSuccessfully()';
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
    required TResult Function() fetchLoading,
    required TResult Function(List<BookedMobileService> mobileServices) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) failed,
    required TResult Function() createSuccessfully,
  }) {
    return createSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function(List<BookedMobileService> mobileServices)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? failed,
    TResult? Function()? createSuccessfully,
  }) {
    return createSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function(List<BookedMobileService> mobileServices)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? failed,
    TResult Function()? createSuccessfully,
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
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
  }) {
    return createSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
  }) {
    return createSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failed value)? failed,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    required TResult orElse(),
  }) {
    if (createSuccessfully != null) {
      return createSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccessfully implements MobileServiceState {
  const factory _CreateSuccessfully() = _$CreateSuccessfullyImpl;
}
