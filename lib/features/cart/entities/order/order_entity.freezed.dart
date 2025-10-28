// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<CartItem> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  BasicModel get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  BasicModel get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  BasicModel? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'totals')
  OrderDetailsTotal get totals => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rated')
  bool get isRated => throw _privateConstructorUsedError;
  @JsonKey(name: 'dealership')
  String? get dealership => throw _privateConstructorUsedError;

  /// Serializes this OrderEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'items') List<CartItem> items,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'payment_method') BasicModel? paymentMethod,
      @JsonKey(name: 'created_at') DateTime date,
      @JsonKey(name: 'totals') OrderDetailsTotal totals,
      @JsonKey(name: 'is_rated') bool isRated,
      @JsonKey(name: 'dealership') String? dealership});

  $BasicModelCopyWith<$Res> get status;
  $BasicModelCopyWith<$Res> get type;
  $BasicModelCopyWith<$Res>? get paymentMethod;
  $OrderDetailsTotalCopyWith<$Res> get totals;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? status = null,
    Object? type = null,
    Object? paymentMethod = freezed,
    Object? date = null,
    Object? totals = null,
    Object? isRated = null,
    Object? dealership = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as BasicModel?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as OrderDetailsTotal,
      isRated: null == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool,
      dealership: freezed == dealership
          ? _value.dealership
          : dealership // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get status {
    return $BasicModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get type {
    return $BasicModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of OrderEntity
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

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsTotalCopyWith<$Res> get totals {
    return $OrderDetailsTotalCopyWith<$Res>(_value.totals, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'items') List<CartItem> items,
      @JsonKey(name: 'status') BasicModel status,
      @JsonKey(name: 'type') BasicModel type,
      @JsonKey(name: 'payment_method') BasicModel? paymentMethod,
      @JsonKey(name: 'created_at') DateTime date,
      @JsonKey(name: 'totals') OrderDetailsTotal totals,
      @JsonKey(name: 'is_rated') bool isRated,
      @JsonKey(name: 'dealership') String? dealership});

  @override
  $BasicModelCopyWith<$Res> get status;
  @override
  $BasicModelCopyWith<$Res> get type;
  @override
  $BasicModelCopyWith<$Res>? get paymentMethod;
  @override
  $OrderDetailsTotalCopyWith<$Res> get totals;
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? status = null,
    Object? type = null,
    Object? paymentMethod = freezed,
    Object? date = null,
    Object? totals = null,
    Object? isRated = null,
    Object? dealership = freezed,
  }) {
    return _then(_$OrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as BasicModel?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as OrderDetailsTotal,
      isRated: null == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool,
      dealership: freezed == dealership
          ? _value.dealership
          : dealership // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEntityImpl implements _OrderEntity {
  const _$OrderEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'items') required final List<CartItem> items,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'created_at') required this.date,
      @JsonKey(name: 'totals') required this.totals,
      @JsonKey(name: 'is_rated') required this.isRated,
      @JsonKey(name: 'dealership') this.dealership})
      : _items = items;

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  final List<CartItem> _items;
  @override
  @JsonKey(name: 'items')
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'status')
  final BasicModel status;
  @override
  @JsonKey(name: 'type')
  final BasicModel type;
  @override
  @JsonKey(name: 'payment_method')
  final BasicModel? paymentMethod;
  @override
  @JsonKey(name: 'created_at')
  final DateTime date;
  @override
  @JsonKey(name: 'totals')
  final OrderDetailsTotal totals;
  @override
  @JsonKey(name: 'is_rated')
  final bool isRated;
  @override
  @JsonKey(name: 'dealership')
  final String? dealership;

  @override
  String toString() {
    return 'OrderEntity(id: $id, items: $items, status: $status, type: $type, paymentMethod: $paymentMethod, date: $date, totals: $totals, isRated: $isRated, dealership: $dealership)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totals, totals) || other.totals == totals) &&
            (identical(other.isRated, isRated) || other.isRated == isRated) &&
            (identical(other.dealership, dealership) ||
                other.dealership == dealership));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_items),
      status,
      type,
      paymentMethod,
      date,
      totals,
      isRated,
      dealership);

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'items') required final List<CartItem> items,
          @JsonKey(name: 'status') required final BasicModel status,
          @JsonKey(name: 'type') required final BasicModel type,
          @JsonKey(name: 'payment_method') final BasicModel? paymentMethod,
          @JsonKey(name: 'created_at') required final DateTime date,
          @JsonKey(name: 'totals') required final OrderDetailsTotal totals,
          @JsonKey(name: 'is_rated') required final bool isRated,
          @JsonKey(name: 'dealership') final String? dealership}) =
      _$OrderEntityImpl;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'items')
  List<CartItem> get items;
  @override
  @JsonKey(name: 'status')
  BasicModel get status;
  @override
  @JsonKey(name: 'type')
  BasicModel get type;
  @override
  @JsonKey(name: 'payment_method')
  BasicModel? get paymentMethod;
  @override
  @JsonKey(name: 'created_at')
  DateTime get date;
  @override
  @JsonKey(name: 'totals')
  OrderDetailsTotal get totals;
  @override
  @JsonKey(name: 'is_rated')
  bool get isRated;
  @override
  @JsonKey(name: 'dealership')
  String? get dealership;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
