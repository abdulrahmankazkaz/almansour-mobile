// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationBody _$NotificationBodyFromJson(Map<String, dynamic> json) {
  return _NotificationBody.fromJson(json);
}

/// @nodoc
mixin _$NotificationBody {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_id')
  int? get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int? get modelId => throw _privateConstructorUsedError;

  /// Serializes this NotificationBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationBodyCopyWith<NotificationBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationBodyCopyWith<$Res> {
  factory $NotificationBodyCopyWith(
          NotificationBody value, $Res Function(NotificationBody) then) =
      _$NotificationBodyCopyWithImpl<$Res, NotificationBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String message,
      @JsonKey(name: 'image') String? imageUrl,
      @JsonKey(name: 'type_id') int? typeId,
      @JsonKey(name: 'model_id') int? modelId});
}

/// @nodoc
class _$NotificationBodyCopyWithImpl<$Res, $Val extends NotificationBody>
    implements $NotificationBodyCopyWith<$Res> {
  _$NotificationBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? imageUrl = freezed,
    Object? typeId = freezed,
    Object? modelId = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationBodyImplCopyWith<$Res>
    implements $NotificationBodyCopyWith<$Res> {
  factory _$$NotificationBodyImplCopyWith(_$NotificationBodyImpl value,
          $Res Function(_$NotificationBodyImpl) then) =
      __$$NotificationBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String message,
      @JsonKey(name: 'image') String? imageUrl,
      @JsonKey(name: 'type_id') int? typeId,
      @JsonKey(name: 'model_id') int? modelId});
}

/// @nodoc
class __$$NotificationBodyImplCopyWithImpl<$Res>
    extends _$NotificationBodyCopyWithImpl<$Res, _$NotificationBodyImpl>
    implements _$$NotificationBodyImplCopyWith<$Res> {
  __$$NotificationBodyImplCopyWithImpl(_$NotificationBodyImpl _value,
      $Res Function(_$NotificationBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? imageUrl = freezed,
    Object? typeId = freezed,
    Object? modelId = freezed,
  }) {
    return _then(_$NotificationBodyImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationBodyImpl implements _NotificationBody {
  const _$NotificationBodyImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') required this.message,
      @JsonKey(name: 'image') this.imageUrl,
      @JsonKey(name: 'type_id') this.typeId,
      @JsonKey(name: 'model_id') required this.modelId});

  factory _$NotificationBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationBodyImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String message;
  @override
  @JsonKey(name: 'image')
  final String? imageUrl;
  @override
  @JsonKey(name: 'type_id')
  final int? typeId;
  @override
  @JsonKey(name: 'model_id')
  final int? modelId;

  @override
  String toString() {
    return 'NotificationBody(title: $title, message: $message, imageUrl: $imageUrl, typeId: $typeId, modelId: $modelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationBodyImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.modelId, modelId) || other.modelId == modelId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, message, imageUrl, typeId, modelId);

  /// Create a copy of NotificationBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationBodyImplCopyWith<_$NotificationBodyImpl> get copyWith =>
      __$$NotificationBodyImplCopyWithImpl<_$NotificationBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationBodyImplToJson(
      this,
    );
  }
}

abstract class _NotificationBody implements NotificationBody {
  const factory _NotificationBody(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'body') required final String message,
          @JsonKey(name: 'image') final String? imageUrl,
          @JsonKey(name: 'type_id') final int? typeId,
          @JsonKey(name: 'model_id') required final int? modelId}) =
      _$NotificationBodyImpl;

  factory _NotificationBody.fromJson(Map<String, dynamic> json) =
      _$NotificationBodyImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get message;
  @override
  @JsonKey(name: 'image')
  String? get imageUrl;
  @override
  @JsonKey(name: 'type_id')
  int? get typeId;
  @override
  @JsonKey(name: 'model_id')
  int? get modelId;

  /// Create a copy of NotificationBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationBodyImplCopyWith<_$NotificationBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
