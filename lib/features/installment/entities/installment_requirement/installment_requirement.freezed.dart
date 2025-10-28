// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'installment_requirement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InstallmentRequirement _$InstallmentRequirementFromJson(
    Map<String, dynamic> json) {
  return _InstallmentRequirement.fromJson(json);
}

/// @nodoc
mixin _$InstallmentRequirement {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<String> get requirements => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_requirement')
  List<InstallmentRequirement> get subRequirements =>
      throw _privateConstructorUsedError;

  /// Serializes this InstallmentRequirement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstallmentRequirement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstallmentRequirementCopyWith<InstallmentRequirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallmentRequirementCopyWith<$Res> {
  factory $InstallmentRequirementCopyWith(InstallmentRequirement value,
          $Res Function(InstallmentRequirement) then) =
      _$InstallmentRequirementCopyWithImpl<$Res, InstallmentRequirement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'image') String? icon,
      @JsonKey(name: 'details') List<String> requirements,
      @JsonKey(name: 'sub_requirement')
      List<InstallmentRequirement> subRequirements});
}

/// @nodoc
class _$InstallmentRequirementCopyWithImpl<$Res,
        $Val extends InstallmentRequirement>
    implements $InstallmentRequirementCopyWith<$Res> {
  _$InstallmentRequirementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstallmentRequirement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = freezed,
    Object? requirements = null,
    Object? subRequirements = null,
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
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subRequirements: null == subRequirements
          ? _value.subRequirements
          : subRequirements // ignore: cast_nullable_to_non_nullable
              as List<InstallmentRequirement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstallmentRequirementImplCopyWith<$Res>
    implements $InstallmentRequirementCopyWith<$Res> {
  factory _$$InstallmentRequirementImplCopyWith(
          _$InstallmentRequirementImpl value,
          $Res Function(_$InstallmentRequirementImpl) then) =
      __$$InstallmentRequirementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'image') String? icon,
      @JsonKey(name: 'details') List<String> requirements,
      @JsonKey(name: 'sub_requirement')
      List<InstallmentRequirement> subRequirements});
}

/// @nodoc
class __$$InstallmentRequirementImplCopyWithImpl<$Res>
    extends _$InstallmentRequirementCopyWithImpl<$Res,
        _$InstallmentRequirementImpl>
    implements _$$InstallmentRequirementImplCopyWith<$Res> {
  __$$InstallmentRequirementImplCopyWithImpl(
      _$InstallmentRequirementImpl _value,
      $Res Function(_$InstallmentRequirementImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstallmentRequirement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = freezed,
    Object? requirements = null,
    Object? subRequirements = null,
  }) {
    return _then(_$InstallmentRequirementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subRequirements: null == subRequirements
          ? _value._subRequirements
          : subRequirements // ignore: cast_nullable_to_non_nullable
              as List<InstallmentRequirement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstallmentRequirementImpl implements _InstallmentRequirement {
  const _$InstallmentRequirementImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image') this.icon,
      @JsonKey(name: 'details') required final List<String> requirements,
      @JsonKey(name: 'sub_requirement')
      final List<InstallmentRequirement> subRequirements = const []})
      : _requirements = requirements,
        _subRequirements = subRequirements;

  factory _$InstallmentRequirementImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstallmentRequirementImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'image')
  final String? icon;
  final List<String> _requirements;
  @override
  @JsonKey(name: 'details')
  List<String> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  final List<InstallmentRequirement> _subRequirements;
  @override
  @JsonKey(name: 'sub_requirement')
  List<InstallmentRequirement> get subRequirements {
    if (_subRequirements is EqualUnmodifiableListView) return _subRequirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subRequirements);
  }

  @override
  String toString() {
    return 'InstallmentRequirement(id: $id, title: $title, icon: $icon, requirements: $requirements, subRequirements: $subRequirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstallmentRequirementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            const DeepCollectionEquality()
                .equals(other._subRequirements, _subRequirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      icon,
      const DeepCollectionEquality().hash(_requirements),
      const DeepCollectionEquality().hash(_subRequirements));

  /// Create a copy of InstallmentRequirement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstallmentRequirementImplCopyWith<_$InstallmentRequirementImpl>
      get copyWith => __$$InstallmentRequirementImplCopyWithImpl<
          _$InstallmentRequirementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstallmentRequirementImplToJson(
      this,
    );
  }
}

abstract class _InstallmentRequirement implements InstallmentRequirement {
  const factory _InstallmentRequirement(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'image') final String? icon,
          @JsonKey(name: 'details') required final List<String> requirements,
          @JsonKey(name: 'sub_requirement')
          final List<InstallmentRequirement> subRequirements}) =
      _$InstallmentRequirementImpl;

  factory _InstallmentRequirement.fromJson(Map<String, dynamic> json) =
      _$InstallmentRequirementImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'image')
  String? get icon;
  @override
  @JsonKey(name: 'details')
  List<String> get requirements;
  @override
  @JsonKey(name: 'sub_requirement')
  List<InstallmentRequirement> get subRequirements;

  /// Create a copy of InstallmentRequirement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstallmentRequirementImplCopyWith<_$InstallmentRequirementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
