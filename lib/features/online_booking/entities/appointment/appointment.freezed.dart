// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_time')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get orderedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  BasicModel get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  BasicModel get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rated')
  bool get isRated => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  BasicModel? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'dealership')
  Dealership get dealership => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_message')
  String? get rejectMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'totals')
  OrderDetailsTotal get totals => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_offer')
  ServiceOffer? get serviceOffer => throw _privateConstructorUsedError;

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'appointment_time') DateTime date,
      @JsonKey(name: 'created_at') DateTime orderedDate,
      @JsonKey(name: 'updated_at') DateTime? updatedDate,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'is_rated') bool isRated,
      @JsonKey(name: 'payment_method') BasicModel? paymentMethod,
      @JsonKey(name: 'dealership') Dealership dealership,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'reject_message') String? rejectMessage,
      @JsonKey(name: 'totals') OrderDetailsTotal totals,
      @JsonKey(name: 'service_offer') ServiceOffer? serviceOffer});

  $BasicModelCopyWith<$Res> get type;
  $BasicModelCopyWith<$Res> get status;
  $BasicModelCopyWith<$Res>? get paymentMethod;
  $DealershipCopyWith<$Res> get dealership;
  $OrderDetailsTotalCopyWith<$Res> get totals;
  $ServiceOfferCopyWith<$Res>? get serviceOffer;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? orderedDate = null,
    Object? updatedDate = freezed,
    Object? type = null,
    Object? status = null,
    Object? isRated = null,
    Object? paymentMethod = freezed,
    Object? dealership = null,
    Object? image = null,
    Object? rejectMessage = freezed,
    Object? totals = null,
    Object? serviceOffer = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderedDate: null == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      isRated: null == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as BasicModel?,
      dealership: null == dealership
          ? _value.dealership
          : dealership // ignore: cast_nullable_to_non_nullable
              as Dealership,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rejectMessage: freezed == rejectMessage
          ? _value.rejectMessage
          : rejectMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as OrderDetailsTotal,
      serviceOffer: freezed == serviceOffer
          ? _value.serviceOffer
          : serviceOffer // ignore: cast_nullable_to_non_nullable
              as ServiceOffer?,
    ) as $Val);
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get type {
    return $BasicModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get status {
    return $BasicModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $BasicModelCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealershipCopyWith<$Res> get dealership {
    return $DealershipCopyWith<$Res>(_value.dealership, (value) {
      return _then(_value.copyWith(dealership: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsTotalCopyWith<$Res> get totals {
    return $OrderDetailsTotalCopyWith<$Res>(_value.totals, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceOfferCopyWith<$Res>? get serviceOffer {
    if (_value.serviceOffer == null) {
      return null;
    }

    return $ServiceOfferCopyWith<$Res>(_value.serviceOffer!, (value) {
      return _then(_value.copyWith(serviceOffer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'appointment_time') DateTime date,
      @JsonKey(name: 'created_at') DateTime orderedDate,
      @JsonKey(name: 'updated_at') DateTime? updatedDate,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'is_rated') bool isRated,
      @JsonKey(name: 'payment_method') BasicModel? paymentMethod,
      @JsonKey(name: 'dealership') Dealership dealership,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'reject_message') String? rejectMessage,
      @JsonKey(name: 'totals') OrderDetailsTotal totals,
      @JsonKey(name: 'service_offer') ServiceOffer? serviceOffer});

  @override
  $BasicModelCopyWith<$Res> get type;
  @override
  $BasicModelCopyWith<$Res> get status;
  @override
  $BasicModelCopyWith<$Res>? get paymentMethod;
  @override
  $DealershipCopyWith<$Res> get dealership;
  @override
  $OrderDetailsTotalCopyWith<$Res> get totals;
  @override
  $ServiceOfferCopyWith<$Res>? get serviceOffer;
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? orderedDate = null,
    Object? updatedDate = freezed,
    Object? type = null,
    Object? status = null,
    Object? isRated = null,
    Object? paymentMethod = freezed,
    Object? dealership = null,
    Object? image = null,
    Object? rejectMessage = freezed,
    Object? totals = null,
    Object? serviceOffer = freezed,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderedDate: null == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      isRated: null == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as BasicModel?,
      dealership: null == dealership
          ? _value.dealership
          : dealership // ignore: cast_nullable_to_non_nullable
              as Dealership,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rejectMessage: freezed == rejectMessage
          ? _value.rejectMessage
          : rejectMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as OrderDetailsTotal,
      serviceOffer: freezed == serviceOffer
          ? _value.serviceOffer
          : serviceOffer // ignore: cast_nullable_to_non_nullable
              as ServiceOffer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl extends _Appointment {
  const _$AppointmentImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'appointment_time') required this.date,
      @JsonKey(name: 'created_at') required this.orderedDate,
      @JsonKey(name: 'updated_at') required this.updatedDate,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'is_rated') required this.isRated,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'dealership') this.dealership = const Dealership(),
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'reject_message') this.rejectMessage = '',
      @JsonKey(name: 'totals') required this.totals,
      @JsonKey(name: 'service_offer') this.serviceOffer})
      : super._();

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'appointment_time')
  final DateTime date;
  @override
  @JsonKey(name: 'created_at')
  final DateTime orderedDate;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedDate;
  @override
  @JsonKey(name: 'type')
  final BasicModel type;
  @override
  @JsonKey(name: 'status')
  final BasicModel status;
  @override
  @JsonKey(name: 'is_rated')
  final bool isRated;
  @override
  @JsonKey(name: 'payment_method')
  final BasicModel? paymentMethod;
  @override
  @JsonKey(name: 'dealership')
  final Dealership dealership;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'reject_message')
  final String? rejectMessage;
  @override
  @JsonKey(name: 'totals')
  final OrderDetailsTotal totals;
  @override
  @JsonKey(name: 'service_offer')
  final ServiceOffer? serviceOffer;

  @override
  String toString() {
    return 'Appointment(id: $id, date: $date, orderedDate: $orderedDate, updatedDate: $updatedDate, type: $type, status: $status, isRated: $isRated, paymentMethod: $paymentMethod, dealership: $dealership, image: $image, rejectMessage: $rejectMessage, totals: $totals, serviceOffer: $serviceOffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.orderedDate, orderedDate) ||
                other.orderedDate == orderedDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRated, isRated) || other.isRated == isRated) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.dealership, dealership) ||
                other.dealership == dealership) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rejectMessage, rejectMessage) ||
                other.rejectMessage == rejectMessage) &&
            (identical(other.totals, totals) || other.totals == totals) &&
            (identical(other.serviceOffer, serviceOffer) ||
                other.serviceOffer == serviceOffer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      orderedDate,
      updatedDate,
      type,
      status,
      isRated,
      paymentMethod,
      dealership,
      image,
      rejectMessage,
      totals,
      serviceOffer);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment extends Appointment {
  const factory _Appointment(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'appointment_time') required final DateTime date,
          @JsonKey(name: 'created_at') required final DateTime orderedDate,
          @JsonKey(name: 'updated_at') required final DateTime? updatedDate,
          @JsonKey(name: 'type') required final BasicModel type,
          @JsonKey(name: 'status') required final BasicModel status,
          @JsonKey(name: 'is_rated') required final bool isRated,
          @JsonKey(name: 'payment_method') final BasicModel? paymentMethod,
          @JsonKey(name: 'dealership') final Dealership dealership,
          @JsonKey(name: 'image') final String image,
          @JsonKey(name: 'reject_message') final String? rejectMessage,
          @JsonKey(name: 'totals') required final OrderDetailsTotal totals,
          @JsonKey(name: 'service_offer') final ServiceOffer? serviceOffer}) =
      _$AppointmentImpl;
  const _Appointment._() : super._();

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'appointment_time')
  DateTime get date;
  @override
  @JsonKey(name: 'created_at')
  DateTime get orderedDate;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedDate;
  @override
  @JsonKey(name: 'type')
  BasicModel get type;
  @override
  @JsonKey(name: 'status')
  BasicModel get status;
  @override
  @JsonKey(name: 'is_rated')
  bool get isRated;
  @override
  @JsonKey(name: 'payment_method')
  BasicModel? get paymentMethod;
  @override
  @JsonKey(name: 'dealership')
  Dealership get dealership;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'reject_message')
  String? get rejectMessage;
  @override
  @JsonKey(name: 'totals')
  OrderDetailsTotal get totals;
  @override
  @JsonKey(name: 'service_offer')
  ServiceOffer? get serviceOffer;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
