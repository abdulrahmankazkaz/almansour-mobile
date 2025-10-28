// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_offer_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceOfferItem _$ServiceOfferItemFromJson(Map<String, dynamic> json) {
  return _ServiceOfferItem.fromJson(json);
}

/// @nodoc
mixin _$ServiceOfferItem {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ServiceOfferItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceOfferItemCopyWith<ServiceOfferItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceOfferItemCopyWith<$Res> {
  factory $ServiceOfferItemCopyWith(
          ServiceOfferItem value, $Res Function(ServiceOfferItem) then) =
      _$ServiceOfferItemCopyWithImpl<$Res, ServiceOfferItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$ServiceOfferItemCopyWithImpl<$Res, $Val extends ServiceOfferItem>
    implements $ServiceOfferItemCopyWith<$Res> {
  _$ServiceOfferItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceOfferItemImplCopyWith<$Res>
    implements $ServiceOfferItemCopyWith<$Res> {
  factory _$$ServiceOfferItemImplCopyWith(_$ServiceOfferItemImpl value,
          $Res Function(_$ServiceOfferItemImpl) then) =
      __$$ServiceOfferItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$ServiceOfferItemImplCopyWithImpl<$Res>
    extends _$ServiceOfferItemCopyWithImpl<$Res, _$ServiceOfferItemImpl>
    implements _$$ServiceOfferItemImplCopyWith<$Res> {
  __$$ServiceOfferItemImplCopyWithImpl(_$ServiceOfferItemImpl _value,
      $Res Function(_$ServiceOfferItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_$ServiceOfferItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceOfferItemImpl implements _ServiceOfferItem {
  const _$ServiceOfferItemImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'description') this.description = ''});

  factory _$ServiceOfferItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceOfferItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'ServiceOfferItem(id: $id, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceOfferItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description);

  /// Create a copy of ServiceOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceOfferItemImplCopyWith<_$ServiceOfferItemImpl> get copyWith =>
      __$$ServiceOfferItemImplCopyWithImpl<_$ServiceOfferItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceOfferItemImplToJson(
      this,
    );
  }
}

abstract class _ServiceOfferItem implements ServiceOfferItem {
  const factory _ServiceOfferItem(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'description') final String description}) =
      _$ServiceOfferItemImpl;

  factory _ServiceOfferItem.fromJson(Map<String, dynamic> json) =
      _$ServiceOfferItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of ServiceOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceOfferItemImplCopyWith<_$ServiceOfferItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
