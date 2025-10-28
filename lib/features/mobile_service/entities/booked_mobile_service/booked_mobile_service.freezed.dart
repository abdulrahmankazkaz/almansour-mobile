// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booked_mobile_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookedMobileService _$BookedMobileServiceFromJson(Map<String, dynamic> json) {
  return _BookedMobileService.fromJson(json);
}

/// @nodoc
mixin _$BookedMobileService {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_time')
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get bookDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  BasicModel get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'area')
  BasicModel get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  BasicModel get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  BasicModel get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  BasicModel get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rated')
  bool get isRated => throw _privateConstructorUsedError;

  /// Serializes this BookedMobileService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookedMobileServiceCopyWith<BookedMobileService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedMobileServiceCopyWith<$Res> {
  factory $BookedMobileServiceCopyWith(
          BookedMobileService value, $Res Function(BookedMobileService) then) =
      _$BookedMobileServiceCopyWithImpl<$Res, BookedMobileService>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'appointment_time') DateTime? appointmentDate,
      @JsonKey(name: 'created_at') DateTime? bookDate,
      @JsonKey(name: 'street') BasicModel street,
      @JsonKey(name: 'area') BasicModel area,
      @JsonKey(name: 'city') BasicModel city,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'is_rated') bool isRated});

  $BasicModelCopyWith<$Res> get street;
  $BasicModelCopyWith<$Res> get area;
  $BasicModelCopyWith<$Res> get city;
  $BasicModelCopyWith<$Res> get status;
  $BasicModelCopyWith<$Res> get type;
}

/// @nodoc
class _$BookedMobileServiceCopyWithImpl<$Res, $Val extends BookedMobileService>
    implements $BookedMobileServiceCopyWith<$Res> {
  _$BookedMobileServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentDate = freezed,
    Object? bookDate = freezed,
    Object? street = null,
    Object? area = null,
    Object? city = null,
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
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get street {
    return $BasicModelCopyWith<$Res>(_value.street, (value) {
      return _then(_value.copyWith(street: value) as $Val);
    });
  }

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get area {
    return $BasicModelCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get city {
    return $BasicModelCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get status {
    return $BasicModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of BookedMobileService
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
abstract class _$$BookedMobileServiceImplCopyWith<$Res>
    implements $BookedMobileServiceCopyWith<$Res> {
  factory _$$BookedMobileServiceImplCopyWith(_$BookedMobileServiceImpl value,
          $Res Function(_$BookedMobileServiceImpl) then) =
      __$$BookedMobileServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'appointment_time') DateTime? appointmentDate,
      @JsonKey(name: 'created_at') DateTime? bookDate,
      @JsonKey(name: 'street') BasicModel street,
      @JsonKey(name: 'area') BasicModel area,
      @JsonKey(name: 'city') BasicModel city,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'is_rated') bool isRated});

  @override
  $BasicModelCopyWith<$Res> get street;
  @override
  $BasicModelCopyWith<$Res> get area;
  @override
  $BasicModelCopyWith<$Res> get city;
  @override
  $BasicModelCopyWith<$Res> get status;
  @override
  $BasicModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$BookedMobileServiceImplCopyWithImpl<$Res>
    extends _$BookedMobileServiceCopyWithImpl<$Res, _$BookedMobileServiceImpl>
    implements _$$BookedMobileServiceImplCopyWith<$Res> {
  __$$BookedMobileServiceImplCopyWithImpl(_$BookedMobileServiceImpl _value,
      $Res Function(_$BookedMobileServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentDate = freezed,
    Object? bookDate = freezed,
    Object? street = null,
    Object? area = null,
    Object? city = null,
    Object? status = null,
    Object? type = null,
    Object? isRated = null,
  }) {
    return _then(_$BookedMobileServiceImpl(
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
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
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
class _$BookedMobileServiceImpl implements _BookedMobileService {
  const _$BookedMobileServiceImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'appointment_time') this.appointmentDate,
      @JsonKey(name: 'created_at') this.bookDate,
      @JsonKey(name: 'street') required this.street,
      @JsonKey(name: 'area') required this.area,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'is_rated') required this.isRated});

  factory _$BookedMobileServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookedMobileServiceImplFromJson(json);

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
  @JsonKey(name: 'street')
  final BasicModel street;
  @override
  @JsonKey(name: 'area')
  final BasicModel area;
  @override
  @JsonKey(name: 'city')
  final BasicModel city;
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
    return 'BookedMobileService(id: $id, appointmentDate: $appointmentDate, bookDate: $bookDate, street: $street, area: $area, city: $city, status: $status, type: $type, isRated: $isRated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedMobileServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appointmentDate, appointmentDate) ||
                other.appointmentDate == appointmentDate) &&
            (identical(other.bookDate, bookDate) ||
                other.bookDate == bookDate) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRated, isRated) || other.isRated == isRated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, appointmentDate, bookDate,
      street, area, city, status, type, isRated);

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedMobileServiceImplCopyWith<_$BookedMobileServiceImpl> get copyWith =>
      __$$BookedMobileServiceImplCopyWithImpl<_$BookedMobileServiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookedMobileServiceImplToJson(
      this,
    );
  }
}

abstract class _BookedMobileService implements BookedMobileService {
  const factory _BookedMobileService(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'appointment_time') final DateTime? appointmentDate,
          @JsonKey(name: 'created_at') final DateTime? bookDate,
          @JsonKey(name: 'street') required final BasicModel street,
          @JsonKey(name: 'area') required final BasicModel area,
          @JsonKey(name: 'city') required final BasicModel city,
          @JsonKey(name: 'status') required final BasicModel status,
          @JsonKey(name: 'type') required final BasicModel type,
          @JsonKey(name: 'is_rated') required final bool isRated}) =
      _$BookedMobileServiceImpl;

  factory _BookedMobileService.fromJson(Map<String, dynamic> json) =
      _$BookedMobileServiceImpl.fromJson;

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
  @JsonKey(name: 'street')
  BasicModel get street;
  @override
  @JsonKey(name: 'area')
  BasicModel get area;
  @override
  @JsonKey(name: 'city')
  BasicModel get city;
  @override
  @JsonKey(name: 'status')
  BasicModel get status;
  @override
  @JsonKey(name: 'type')
  BasicModel get type;
  @override
  @JsonKey(name: 'is_rated')
  bool get isRated;

  /// Create a copy of BookedMobileService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookedMobileServiceImplCopyWith<_$BookedMobileServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
