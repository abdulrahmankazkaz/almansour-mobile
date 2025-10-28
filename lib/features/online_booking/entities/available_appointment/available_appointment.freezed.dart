// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableAppointment _$AvailableAppointmentFromJson(Map<String, dynamic> json) {
  return _AvailableAppointment.fromJson(json);
}

/// @nodoc
mixin _$AvailableAppointment {
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this AvailableAppointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableAppointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableAppointmentCopyWith<AvailableAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableAppointmentCopyWith<$Res> {
  factory $AvailableAppointmentCopyWith(AvailableAppointment value,
          $Res Function(AvailableAppointment) then) =
      _$AvailableAppointmentCopyWithImpl<$Res, AvailableAppointment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'is_available') bool isAvailable});
}

/// @nodoc
class _$AvailableAppointmentCopyWithImpl<$Res,
        $Val extends AvailableAppointment>
    implements $AvailableAppointmentCopyWith<$Res> {
  _$AvailableAppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableAppointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableAppointmentImplCopyWith<$Res>
    implements $AvailableAppointmentCopyWith<$Res> {
  factory _$$AvailableAppointmentImplCopyWith(_$AvailableAppointmentImpl value,
          $Res Function(_$AvailableAppointmentImpl) then) =
      __$$AvailableAppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'is_available') bool isAvailable});
}

/// @nodoc
class __$$AvailableAppointmentImplCopyWithImpl<$Res>
    extends _$AvailableAppointmentCopyWithImpl<$Res, _$AvailableAppointmentImpl>
    implements _$$AvailableAppointmentImplCopyWith<$Res> {
  __$$AvailableAppointmentImplCopyWithImpl(_$AvailableAppointmentImpl _value,
      $Res Function(_$AvailableAppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvailableAppointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isAvailable = null,
  }) {
    return _then(_$AvailableAppointmentImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableAppointmentImpl extends _AvailableAppointment {
  const _$AvailableAppointmentImpl(
      {@JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'is_available') required this.isAvailable})
      : super._();

  factory _$AvailableAppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableAppointmentImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final DateTime date;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;

  @override
  String toString() {
    return 'AvailableAppointment(date: $date, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableAppointmentImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, isAvailable);

  /// Create a copy of AvailableAppointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableAppointmentImplCopyWith<_$AvailableAppointmentImpl>
      get copyWith =>
          __$$AvailableAppointmentImplCopyWithImpl<_$AvailableAppointmentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableAppointmentImplToJson(
      this,
    );
  }
}

abstract class _AvailableAppointment extends AvailableAppointment {
  const factory _AvailableAppointment(
          {@JsonKey(name: 'date') required final DateTime date,
          @JsonKey(name: 'is_available') required final bool isAvailable}) =
      _$AvailableAppointmentImpl;
  const _AvailableAppointment._() : super._();

  factory _AvailableAppointment.fromJson(Map<String, dynamic> json) =
      _$AvailableAppointmentImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  DateTime get date;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;

  /// Create a copy of AvailableAppointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableAppointmentImplCopyWith<_$AvailableAppointmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
