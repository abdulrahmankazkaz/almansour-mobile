// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuickServiceModel _$QuickServiceModelFromJson(Map<String, dynamic> json) {
  return _QuickServiceModel.fromJson(json);
}

/// @nodoc
mixin _$QuickServiceModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_time')
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get bookDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'dealership')
  BasicModel get dealership => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  BasicModel get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  BasicModel get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rated')
  bool get isRated => throw _privateConstructorUsedError;

  /// Serializes this QuickServiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickServiceModelCopyWith<QuickServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickServiceModelCopyWith<$Res> {
  factory $QuickServiceModelCopyWith(
          QuickServiceModel value, $Res Function(QuickServiceModel) then) =
      _$QuickServiceModelCopyWithImpl<$Res, QuickServiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'appointment_time') DateTime? appointmentDate,
      @JsonKey(name: 'created_at') DateTime? bookDate,
      @JsonKey(name: 'dealership') BasicModel dealership,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'is_rated') bool isRated});

  $BasicModelCopyWith<$Res> get dealership;
  $BasicModelCopyWith<$Res> get status;
  $BasicModelCopyWith<$Res> get type;
}

/// @nodoc
class _$QuickServiceModelCopyWithImpl<$Res, $Val extends QuickServiceModel>
    implements $QuickServiceModelCopyWith<$Res> {
  _$QuickServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentDate = freezed,
    Object? bookDate = freezed,
    Object? dealership = null,
    Object? status = null,
    Object? type = null,
    Object? isRated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentDate: freezed == appointmentDate
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookDate: freezed == bookDate
          ? _value.bookDate
          : bookDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dealership: null == dealership
          ? _value.dealership
          : dealership // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      isRated: null == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get dealership {
    return $BasicModelCopyWith<$Res>(_value.dealership, (value) {
      return _then(_value.copyWith(dealership: value) as $Val);
    });
  }

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get status {
    return $BasicModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get type {
    return $BasicModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuickServiceModelImplCopyWith<$Res>
    implements $QuickServiceModelCopyWith<$Res> {
  factory _$$QuickServiceModelImplCopyWith(_$QuickServiceModelImpl value,
          $Res Function(_$QuickServiceModelImpl) then) =
      __$$QuickServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'appointment_time') DateTime? appointmentDate,
      @JsonKey(name: 'created_at') DateTime? bookDate,
      @JsonKey(name: 'dealership') BasicModel dealership,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'is_rated') bool isRated});

  @override
  $BasicModelCopyWith<$Res> get dealership;
  @override
  $BasicModelCopyWith<$Res> get status;
  @override
  $BasicModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$QuickServiceModelImplCopyWithImpl<$Res>
    extends _$QuickServiceModelCopyWithImpl<$Res, _$QuickServiceModelImpl>
    implements _$$QuickServiceModelImplCopyWith<$Res> {
  __$$QuickServiceModelImplCopyWithImpl(_$QuickServiceModelImpl _value,
      $Res Function(_$QuickServiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentDate = freezed,
    Object? bookDate = freezed,
    Object? dealership = null,
    Object? status = null,
    Object? type = null,
    Object? isRated = null,
  }) {
    return _then(_$QuickServiceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentDate: freezed == appointmentDate
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookDate: freezed == bookDate
          ? _value.bookDate
          : bookDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dealership: null == dealership
          ? _value.dealership
          : dealership // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      isRated: null == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuickServiceModelImpl implements _QuickServiceModel {
  const _$QuickServiceModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'appointment_time') this.appointmentDate,
      @JsonKey(name: 'created_at') this.bookDate,
      @JsonKey(name: 'dealership') required this.dealership,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'is_rated') required this.isRated});

  factory _$QuickServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuickServiceModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'appointment_time')
  final DateTime? appointmentDate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? bookDate;
  @override
  @JsonKey(name: 'dealership')
  final BasicModel dealership;
  @override
  @JsonKey(name: 'status')
  final BasicModel status;
  @override
  @JsonKey(name: 'type')
  final BasicModel type;
  @override
  @JsonKey(name: 'is_rated')
  final bool isRated;

  @override
  String toString() {
    return 'QuickServiceModel(id: $id, appointmentDate: $appointmentDate, bookDate: $bookDate, dealership: $dealership, status: $status, type: $type, isRated: $isRated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickServiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appointmentDate, appointmentDate) ||
                other.appointmentDate == appointmentDate) &&
            (identical(other.bookDate, bookDate) ||
                other.bookDate == bookDate) &&
            (identical(other.dealership, dealership) ||
                other.dealership == dealership) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRated, isRated) || other.isRated == isRated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, appointmentDate, bookDate,
      dealership, status, type, isRated);

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickServiceModelImplCopyWith<_$QuickServiceModelImpl> get copyWith =>
      __$$QuickServiceModelImplCopyWithImpl<_$QuickServiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuickServiceModelImplToJson(
      this,
    );
  }
}

abstract class _QuickServiceModel implements QuickServiceModel {
  const factory _QuickServiceModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'appointment_time') final DateTime? appointmentDate,
          @JsonKey(name: 'created_at') final DateTime? bookDate,
          @JsonKey(name: 'dealership') required final BasicModel dealership,
          @JsonKey(name: 'status') required final BasicModel status,
          @JsonKey(name: 'type') required final BasicModel type,
          @JsonKey(name: 'is_rated') required final bool isRated}) =
      _$QuickServiceModelImpl;

  factory _QuickServiceModel.fromJson(Map<String, dynamic> json) =
      _$QuickServiceModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'appointment_time')
  DateTime? get appointmentDate;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get bookDate;
  @override
  @JsonKey(name: 'dealership')
  BasicModel get dealership;
  @override
  @JsonKey(name: 'status')
  BasicModel get status;
  @override
  @JsonKey(name: 'type')
  BasicModel get type;
  @override
  @JsonKey(name: 'is_rated')
  bool get isRated;

  /// Create a copy of QuickServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickServiceModelImplCopyWith<_$QuickServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
