// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuickServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() get,
    required TResult Function(QuickServiceParameters params) createQuickService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? get,
    TResult? Function(QuickServiceParameters params)? createQuickService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(QuickServiceParameters params)? createQuickService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Get value) get,
    required TResult Function(_CreateQuickService value) createQuickService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Get value)? get,
    TResult? Function(_CreateQuickService value)? createQuickService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_CreateQuickService value)? createQuickService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickServiceEventCopyWith<$Res> {
  factory $QuickServiceEventCopyWith(
          QuickServiceEvent value, $Res Function(QuickServiceEvent) then) =
      _$QuickServiceEventCopyWithImpl<$Res, QuickServiceEvent>;
}

/// @nodoc
class _$QuickServiceEventCopyWithImpl<$Res, $Val extends QuickServiceEvent>
    implements $QuickServiceEventCopyWith<$Res> {
  _$QuickServiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickServiceEvent
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
    extends _$QuickServiceEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'QuickServiceEvent.started()';
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
    required TResult Function() get,
    required TResult Function(QuickServiceParameters params) createQuickService,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? get,
    TResult? Function(QuickServiceParameters params)? createQuickService,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(QuickServiceParameters params)? createQuickService,
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
    required TResult Function(_Get value) get,
    required TResult Function(_CreateQuickService value) createQuickService,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Get value)? get,
    TResult? Function(_CreateQuickService value)? createQuickService,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_CreateQuickService value)? createQuickService,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuickServiceEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$QuickServiceEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetImpl implements _Get {
  const _$GetImpl();

  @override
  String toString() {
    return 'QuickServiceEvent.get()';
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
    required TResult Function() get,
    required TResult Function(QuickServiceParameters params) createQuickService,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? get,
    TResult? Function(QuickServiceParameters params)? createQuickService,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(QuickServiceParameters params)? createQuickService,
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
    required TResult Function(_Get value) get,
    required TResult Function(_CreateQuickService value) createQuickService,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Get value)? get,
    TResult? Function(_CreateQuickService value)? createQuickService,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_CreateQuickService value)? createQuickService,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements QuickServiceEvent {
  const factory _Get() = _$GetImpl;
}

/// @nodoc
abstract class _$$CreateQuickServiceImplCopyWith<$Res> {
  factory _$$CreateQuickServiceImplCopyWith(_$CreateQuickServiceImpl value,
          $Res Function(_$CreateQuickServiceImpl) then) =
      __$$CreateQuickServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuickServiceParameters params});
}

/// @nodoc
class __$$CreateQuickServiceImplCopyWithImpl<$Res>
    extends _$QuickServiceEventCopyWithImpl<$Res, _$CreateQuickServiceImpl>
    implements _$$CreateQuickServiceImplCopyWith<$Res> {
  __$$CreateQuickServiceImplCopyWithImpl(_$CreateQuickServiceImpl _value,
      $Res Function(_$CreateQuickServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CreateQuickServiceImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as QuickServiceParameters,
    ));
  }
}

/// @nodoc

class _$CreateQuickServiceImpl implements _CreateQuickService {
  const _$CreateQuickServiceImpl(this.params);

  @override
  final QuickServiceParameters params;

  @override
  String toString() {
    return 'QuickServiceEvent.createQuickService(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuickServiceImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of QuickServiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuickServiceImplCopyWith<_$CreateQuickServiceImpl> get copyWith =>
      __$$CreateQuickServiceImplCopyWithImpl<_$CreateQuickServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() get,
    required TResult Function(QuickServiceParameters params) createQuickService,
  }) {
    return createQuickService(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? get,
    TResult? Function(QuickServiceParameters params)? createQuickService,
  }) {
    return createQuickService?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(QuickServiceParameters params)? createQuickService,
    required TResult orElse(),
  }) {
    if (createQuickService != null) {
      return createQuickService(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Get value) get,
    required TResult Function(_CreateQuickService value) createQuickService,
  }) {
    return createQuickService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Get value)? get,
    TResult? Function(_CreateQuickService value)? createQuickService,
  }) {
    return createQuickService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_CreateQuickService value)? createQuickService,
    required TResult orElse(),
  }) {
    if (createQuickService != null) {
      return createQuickService(this);
    }
    return orElse();
  }
}

abstract class _CreateQuickService implements QuickServiceEvent {
  const factory _CreateQuickService(final QuickServiceParameters params) =
      _$CreateQuickServiceImpl;

  QuickServiceParameters get params;

  /// Create a copy of QuickServiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateQuickServiceImplCopyWith<_$CreateQuickServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickServiceStateCopyWith<$Res> {
  factory $QuickServiceStateCopyWith(
          QuickServiceState value, $Res Function(QuickServiceState) then) =
      _$QuickServiceStateCopyWithImpl<$Res, QuickServiceState>;
}

/// @nodoc
class _$QuickServiceStateCopyWithImpl<$Res, $Val extends QuickServiceState>
    implements $QuickServiceStateCopyWith<$Res> {
  _$QuickServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickServiceState
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
    extends _$QuickServiceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuickServiceState.initial()';
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
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
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
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuickServiceState {
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
    extends _$QuickServiceStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'QuickServiceState.loading()';
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
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
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
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuickServiceState {
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
    extends _$QuickServiceStateCopyWithImpl<$Res, _$FetchLoadingImpl>
    implements _$$FetchLoadingImplCopyWith<$Res> {
  __$$FetchLoadingImplCopyWithImpl(
      _$FetchLoadingImpl _value, $Res Function(_$FetchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchLoadingImpl implements _FetchLoading {
  const _$FetchLoadingImpl();

  @override
  String toString() {
    return 'QuickServiceState.fetchLoading()';
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
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) {
    return fetchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) {
    return fetchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) {
    return fetchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) {
    return fetchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (fetchLoading != null) {
      return fetchLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchLoading implements QuickServiceState {
  const factory _FetchLoading() = _$FetchLoadingImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$QuickServiceStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'QuickServiceState.empty()';
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
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements QuickServiceState {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuickServiceModel> quickServices});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$QuickServiceStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quickServices = null,
  }) {
    return _then(_$LoadedImpl(
      null == quickServices
          ? _value._quickServices
          : quickServices // ignore: cast_nullable_to_non_nullable
              as List<QuickServiceModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<QuickServiceModel> quickServices)
      : _quickServices = quickServices;

  final List<QuickServiceModel> _quickServices;
  @override
  List<QuickServiceModel> get quickServices {
    if (_quickServices is EqualUnmodifiableListView) return _quickServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickServices);
  }

  @override
  String toString() {
    return 'QuickServiceState.loaded(quickServices: $quickServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._quickServices, _quickServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_quickServices));

  /// Create a copy of QuickServiceState
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
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) {
    return loaded(quickServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) {
    return loaded?.call(quickServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
    TResult Function(String failedMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(quickServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements QuickServiceState {
  const factory _Loaded(final List<QuickServiceModel> quickServices) =
      _$LoadedImpl;

  List<QuickServiceModel> get quickServices;

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$QuickServiceStateCopyWithImpl<$Res, _$CreateSuccessfullyImpl>
    implements _$$CreateSuccessfullyImplCopyWith<$Res> {
  __$$CreateSuccessfullyImplCopyWithImpl(_$CreateSuccessfullyImpl _value,
      $Res Function(_$CreateSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateSuccessfullyImpl implements _CreateSuccessfully {
  const _$CreateSuccessfullyImpl();

  @override
  String toString() {
    return 'QuickServiceState.createSuccessfully()';
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
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) {
    return createSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) {
    return createSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
    TResult Function(String failedMessage)? failed,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) {
    return createSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) {
    return createSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (createSuccessfully != null) {
      return createSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccessfully implements QuickServiceState {
  const factory _CreateSuccessfully() = _$CreateSuccessfullyImpl;
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
    extends _$QuickServiceStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceState
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
    return 'QuickServiceState.failed(failedMessage: $failedMessage)';
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

  /// Create a copy of QuickServiceState
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
    required TResult Function() empty,
    required TResult Function(List<QuickServiceModel> quickServices) loaded,
    required TResult Function() createSuccessfully,
    required TResult Function(String failedMessage) failed,
  }) {
    return failed(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? empty,
    TResult? Function(List<QuickServiceModel> quickServices)? loaded,
    TResult? Function()? createSuccessfully,
    TResult? Function(String failedMessage)? failed,
  }) {
    return failed?.call(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? empty,
    TResult Function(List<QuickServiceModel> quickServices)? loaded,
    TResult Function()? createSuccessfully,
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
    required TResult Function(_FetchLoading value) fetchLoading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_CreateSuccessfully value) createSuccessfully,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoading value)? fetchLoading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_CreateSuccessfully value)? createSuccessfully,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoading value)? fetchLoading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_CreateSuccessfully value)? createSuccessfully,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements QuickServiceState {
  const factory _Failed(final String failedMessage) = _$FailedImpl;

  String get failedMessage;

  /// Create a copy of QuickServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
