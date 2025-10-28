// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceOffer _$ServiceOfferFromJson(Map<String, dynamic> json) {
  return _ServiceOffer.fromJson(json);
}

/// @nodoc
mixin _$ServiceOffer {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'odometer')
  int get odometer => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ServiceOfferItem> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  String get year => throw _privateConstructorUsedError;

  /// Serializes this ServiceOffer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceOfferCopyWith<ServiceOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceOfferCopyWith<$Res> {
  factory $ServiceOfferCopyWith(
          ServiceOffer value, $Res Function(ServiceOffer) then) =
      _$ServiceOfferCopyWithImpl<$Res, ServiceOffer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'odometer') int odometer,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'items') List<ServiceOfferItem> items,
      @JsonKey(name: 'year') String year});
}

/// @nodoc
class _$ServiceOfferCopyWithImpl<$Res, $Val extends ServiceOffer>
    implements $ServiceOfferCopyWith<$Res> {
  _$ServiceOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? odometer = null,
    Object? price = null,
    Object? items = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ServiceOfferItem>,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceOfferImplCopyWith<$Res>
    implements $ServiceOfferCopyWith<$Res> {
  factory _$$ServiceOfferImplCopyWith(
          _$ServiceOfferImpl value, $Res Function(_$ServiceOfferImpl) then) =
      __$$ServiceOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'odometer') int odometer,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'items') List<ServiceOfferItem> items,
      @JsonKey(name: 'year') String year});
}

/// @nodoc
class __$$ServiceOfferImplCopyWithImpl<$Res>
    extends _$ServiceOfferCopyWithImpl<$Res, _$ServiceOfferImpl>
    implements _$$ServiceOfferImplCopyWith<$Res> {
  __$$ServiceOfferImplCopyWithImpl(
      _$ServiceOfferImpl _value, $Res Function(_$ServiceOfferImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? odometer = null,
    Object? price = null,
    Object? items = null,
    Object? year = null,
  }) {
    return _then(_$ServiceOfferImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ServiceOfferItem>,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceOfferImpl implements _ServiceOffer {
  const _$ServiceOfferImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'odometer') this.odometer = 0,
      @JsonKey(name: 'price') this.price = 0,
      @JsonKey(name: 'items') final List<ServiceOfferItem> items = const [],
      @JsonKey(name: 'year') this.year = ''})
      : _items = items;

  factory _$ServiceOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceOfferImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'odometer')
  final int odometer;
  @override
  @JsonKey(name: 'price')
  final double price;
  final List<ServiceOfferItem> _items;
  @override
  @JsonKey(name: 'items')
  List<ServiceOfferItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'year')
  final String year;

  @override
  String toString() {
    return 'ServiceOffer(id: $id, title: $title, odometer: $odometer, price: $price, items: $items, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceOfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.odometer, odometer) ||
                other.odometer == odometer) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, odometer, price,
      const DeepCollectionEquality().hash(_items), year);

  /// Create a copy of ServiceOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceOfferImplCopyWith<_$ServiceOfferImpl> get copyWith =>
      __$$ServiceOfferImplCopyWithImpl<_$ServiceOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceOfferImplToJson(
      this,
    );
  }
}

abstract class _ServiceOffer implements ServiceOffer {
  const factory _ServiceOffer(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'odometer') final int odometer,
      @JsonKey(name: 'price') final double price,
      @JsonKey(name: 'items') final List<ServiceOfferItem> items,
      @JsonKey(name: 'year') final String year}) = _$ServiceOfferImpl;

  factory _ServiceOffer.fromJson(Map<String, dynamic> json) =
      _$ServiceOfferImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'odometer')
  int get odometer;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'items')
  List<ServiceOfferItem> get items;
  @override
  @JsonKey(name: 'year')
  String get year;

  /// Create a copy of ServiceOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceOfferImplCopyWith<_$ServiceOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
