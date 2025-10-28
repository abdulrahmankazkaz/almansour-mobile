// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spare_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SparePart _$SparePartFromJson(Map<String, dynamic> json) {
  return _SparePart.fromJson(json);
}

/// @nodoc
mixin _$SparePart {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;

  /// Serializes this SparePart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SparePart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SparePartCopyWith<SparePart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SparePartCopyWith<$Res> {
  factory $SparePartCopyWith(SparePart value, $Res Function(SparePart) then) =
      _$SparePartCopyWithImpl<$Res, SparePart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class _$SparePartCopyWithImpl<$Res, $Val extends SparePart>
    implements $SparePartCopyWith<$Res> {
  _$SparePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SparePart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SparePartImplCopyWith<$Res>
    implements $SparePartCopyWith<$Res> {
  factory _$$SparePartImplCopyWith(
          _$SparePartImpl value, $Res Function(_$SparePartImpl) then) =
      __$$SparePartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class __$$SparePartImplCopyWithImpl<$Res>
    extends _$SparePartCopyWithImpl<$Res, _$SparePartImpl>
    implements _$$SparePartImplCopyWith<$Res> {
  __$$SparePartImplCopyWithImpl(
      _$SparePartImpl _value, $Res Function(_$SparePartImpl) _then)
      : super(_value, _then);

  /// Create a copy of SparePart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_$SparePartImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SparePartImpl implements _SparePart {
  const _$SparePartImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'price') this.price});

  factory _$SparePartImpl.fromJson(Map<String, dynamic> json) =>
      _$$SparePartImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'price')
  final double? price;

  @override
  String toString() {
    return 'SparePart(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SparePartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price);

  /// Create a copy of SparePart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SparePartImplCopyWith<_$SparePartImpl> get copyWith =>
      __$$SparePartImplCopyWithImpl<_$SparePartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SparePartImplToJson(
      this,
    );
  }
}

abstract class _SparePart implements SparePart {
  const factory _SparePart(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'price') final double? price}) = _$SparePartImpl;

  factory _SparePart.fromJson(Map<String, dynamic> json) =
      _$SparePartImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'price')
  double? get price;

  /// Create a copy of SparePart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SparePartImplCopyWith<_$SparePartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
