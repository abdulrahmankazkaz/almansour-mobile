// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  int get id => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_name')
  BasicModel get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_installment')
  bool get hasInstallment => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_economy')
  String get fuel => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_cargo')
  String get cargo => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_avail_hp')
  String get availableHip => throw _privateConstructorUsedError;
  @JsonKey(name: 'seats')
  String get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'engine')
  String get engine => throw _privateConstructorUsedError;
  @JsonKey(name: 'camera_views')
  String get cameras => throw _privateConstructorUsedError;
  @JsonKey(name: 'catalog_link')
  String get catalogLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'virtual_catalog_link')
  String get virtualCatalogLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  CarBrand get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'trim_level')
  BasicModel get trimLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_image')
  String get mainImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_images')
  List<ImageWithColor> get secondaryImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Car to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {int id,
      double price,
      int year,
      List<String> images,
      @JsonKey(name: 'car_name') BasicModel name,
      @JsonKey(name: 'has_installment') bool hasInstallment,
      @JsonKey(name: 'fuel_economy') String fuel,
      @JsonKey(name: 'max_cargo') String cargo,
      @JsonKey(name: 'max_avail_hp') String availableHip,
      @JsonKey(name: 'seats') String seats,
      @JsonKey(name: 'engine') String engine,
      @JsonKey(name: 'camera_views') String cameras,
      @JsonKey(name: 'catalog_link') String catalogLink,
      @JsonKey(name: 'virtual_catalog_link') String virtualCatalogLink,
      @JsonKey(name: 'brand') CarBrand brand,
      @JsonKey(name: 'trim_level') BasicModel trimLevel,
      @JsonKey(name: 'primary_image') String mainImage,
      @JsonKey(name: 'secondary_images') List<ImageWithColor> secondaryImage,
      @JsonKey(name: 'description') String description});

  $BasicModelCopyWith<$Res> get name;
  $CarBrandCopyWith<$Res> get brand;
  $BasicModelCopyWith<$Res> get trimLevel;
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? year = null,
    Object? images = null,
    Object? name = null,
    Object? hasInstallment = null,
    Object? fuel = null,
    Object? cargo = null,
    Object? availableHip = null,
    Object? seats = null,
    Object? engine = null,
    Object? cameras = null,
    Object? catalogLink = null,
    Object? virtualCatalogLink = null,
    Object? brand = null,
    Object? trimLevel = null,
    Object? mainImage = null,
    Object? secondaryImage = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      hasInstallment: null == hasInstallment
          ? _value.hasInstallment
          : hasInstallment // ignore: cast_nullable_to_non_nullable
              as bool,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as String,
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as String,
      availableHip: null == availableHip
          ? _value.availableHip
          : availableHip // ignore: cast_nullable_to_non_nullable
              as String,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as String,
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as String,
      catalogLink: null == catalogLink
          ? _value.catalogLink
          : catalogLink // ignore: cast_nullable_to_non_nullable
              as String,
      virtualCatalogLink: null == virtualCatalogLink
          ? _value.virtualCatalogLink
          : virtualCatalogLink // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CarBrand,
      trimLevel: null == trimLevel
          ? _value.trimLevel
          : trimLevel // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryImage: null == secondaryImage
          ? _value.secondaryImage
          : secondaryImage // ignore: cast_nullable_to_non_nullable
              as List<ImageWithColor>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get name {
    return $BasicModelCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarBrandCopyWith<$Res> get brand {
    return $CarBrandCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get trimLevel {
    return $BasicModelCopyWith<$Res>(_value.trimLevel, (value) {
      return _then(_value.copyWith(trimLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarImplCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$CarImplCopyWith(_$CarImpl value, $Res Function(_$CarImpl) then) =
      __$$CarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double price,
      int year,
      List<String> images,
      @JsonKey(name: 'car_name') BasicModel name,
      @JsonKey(name: 'has_installment') bool hasInstallment,
      @JsonKey(name: 'fuel_economy') String fuel,
      @JsonKey(name: 'max_cargo') String cargo,
      @JsonKey(name: 'max_avail_hp') String availableHip,
      @JsonKey(name: 'seats') String seats,
      @JsonKey(name: 'engine') String engine,
      @JsonKey(name: 'camera_views') String cameras,
      @JsonKey(name: 'catalog_link') String catalogLink,
      @JsonKey(name: 'virtual_catalog_link') String virtualCatalogLink,
      @JsonKey(name: 'brand') CarBrand brand,
      @JsonKey(name: 'trim_level') BasicModel trimLevel,
      @JsonKey(name: 'primary_image') String mainImage,
      @JsonKey(name: 'secondary_images') List<ImageWithColor> secondaryImage,
      @JsonKey(name: 'description') String description});

  @override
  $BasicModelCopyWith<$Res> get name;
  @override
  $CarBrandCopyWith<$Res> get brand;
  @override
  $BasicModelCopyWith<$Res> get trimLevel;
}

/// @nodoc
class __$$CarImplCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$CarImpl>
    implements _$$CarImplCopyWith<$Res> {
  __$$CarImplCopyWithImpl(_$CarImpl _value, $Res Function(_$CarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? year = null,
    Object? images = null,
    Object? name = null,
    Object? hasInstallment = null,
    Object? fuel = null,
    Object? cargo = null,
    Object? availableHip = null,
    Object? seats = null,
    Object? engine = null,
    Object? cameras = null,
    Object? catalogLink = null,
    Object? virtualCatalogLink = null,
    Object? brand = null,
    Object? trimLevel = null,
    Object? mainImage = null,
    Object? secondaryImage = null,
    Object? description = null,
  }) {
    return _then(_$CarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      hasInstallment: null == hasInstallment
          ? _value.hasInstallment
          : hasInstallment // ignore: cast_nullable_to_non_nullable
              as bool,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as String,
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as String,
      availableHip: null == availableHip
          ? _value.availableHip
          : availableHip // ignore: cast_nullable_to_non_nullable
              as String,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as String,
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as String,
      catalogLink: null == catalogLink
          ? _value.catalogLink
          : catalogLink // ignore: cast_nullable_to_non_nullable
              as String,
      virtualCatalogLink: null == virtualCatalogLink
          ? _value.virtualCatalogLink
          : virtualCatalogLink // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CarBrand,
      trimLevel: null == trimLevel
          ? _value.trimLevel
          : trimLevel // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryImage: null == secondaryImage
          ? _value._secondaryImage
          : secondaryImage // ignore: cast_nullable_to_non_nullable
              as List<ImageWithColor>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarImpl implements _Car {
  const _$CarImpl(
      {required this.id,
      this.price = 0,
      this.year = 0,
      final List<String> images = const [],
      @JsonKey(name: 'car_name') this.name = const BasicModel(),
      @JsonKey(name: 'has_installment') this.hasInstallment = false,
      @JsonKey(name: 'fuel_economy') this.fuel = '',
      @JsonKey(name: 'max_cargo') this.cargo = '',
      @JsonKey(name: 'max_avail_hp') this.availableHip = '',
      @JsonKey(name: 'seats') this.seats = '',
      @JsonKey(name: 'engine') this.engine = '',
      @JsonKey(name: 'camera_views') this.cameras = '',
      @JsonKey(name: 'catalog_link') this.catalogLink = '',
      @JsonKey(name: 'virtual_catalog_link') this.virtualCatalogLink = '',
      @JsonKey(name: 'brand') required this.brand,
      @JsonKey(name: 'trim_level') this.trimLevel = const BasicModel(),
      @JsonKey(name: 'primary_image') this.mainImage = '',
      @JsonKey(name: 'secondary_images')
      final List<ImageWithColor> secondaryImage = const [],
      @JsonKey(name: 'description') this.description = ''})
      : _images = images,
        _secondaryImage = secondaryImage;

  factory _$CarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final int year;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'car_name')
  final BasicModel name;
  @override
  @JsonKey(name: 'has_installment')
  final bool hasInstallment;
  @override
  @JsonKey(name: 'fuel_economy')
  final String fuel;
  @override
  @JsonKey(name: 'max_cargo')
  final String cargo;
  @override
  @JsonKey(name: 'max_avail_hp')
  final String availableHip;
  @override
  @JsonKey(name: 'seats')
  final String seats;
  @override
  @JsonKey(name: 'engine')
  final String engine;
  @override
  @JsonKey(name: 'camera_views')
  final String cameras;
  @override
  @JsonKey(name: 'catalog_link')
  final String catalogLink;
  @override
  @JsonKey(name: 'virtual_catalog_link')
  final String virtualCatalogLink;
  @override
  @JsonKey(name: 'brand')
  final CarBrand brand;
  @override
  @JsonKey(name: 'trim_level')
  final BasicModel trimLevel;
  @override
  @JsonKey(name: 'primary_image')
  final String mainImage;
  final List<ImageWithColor> _secondaryImage;
  @override
  @JsonKey(name: 'secondary_images')
  List<ImageWithColor> get secondaryImage {
    if (_secondaryImage is EqualUnmodifiableListView) return _secondaryImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondaryImage);
  }

  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'Car(id: $id, price: $price, year: $year, images: $images, name: $name, hasInstallment: $hasInstallment, fuel: $fuel, cargo: $cargo, availableHip: $availableHip, seats: $seats, engine: $engine, cameras: $cameras, catalogLink: $catalogLink, virtualCatalogLink: $virtualCatalogLink, brand: $brand, trimLevel: $trimLevel, mainImage: $mainImage, secondaryImage: $secondaryImage, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasInstallment, hasInstallment) ||
                other.hasInstallment == hasInstallment) &&
            (identical(other.fuel, fuel) || other.fuel == fuel) &&
            (identical(other.cargo, cargo) || other.cargo == cargo) &&
            (identical(other.availableHip, availableHip) ||
                other.availableHip == availableHip) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.cameras, cameras) || other.cameras == cameras) &&
            (identical(other.catalogLink, catalogLink) ||
                other.catalogLink == catalogLink) &&
            (identical(other.virtualCatalogLink, virtualCatalogLink) ||
                other.virtualCatalogLink == virtualCatalogLink) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.trimLevel, trimLevel) ||
                other.trimLevel == trimLevel) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            const DeepCollectionEquality()
                .equals(other._secondaryImage, _secondaryImage) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        price,
        year,
        const DeepCollectionEquality().hash(_images),
        name,
        hasInstallment,
        fuel,
        cargo,
        availableHip,
        seats,
        engine,
        cameras,
        catalogLink,
        virtualCatalogLink,
        brand,
        trimLevel,
        mainImage,
        const DeepCollectionEquality().hash(_secondaryImage),
        description
      ]);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      __$$CarImplCopyWithImpl<_$CarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarImplToJson(
      this,
    );
  }
}

abstract class _Car implements Car {
  const factory _Car(
      {required final int id,
      final double price,
      final int year,
      final List<String> images,
      @JsonKey(name: 'car_name') final BasicModel name,
      @JsonKey(name: 'has_installment') final bool hasInstallment,
      @JsonKey(name: 'fuel_economy') final String fuel,
      @JsonKey(name: 'max_cargo') final String cargo,
      @JsonKey(name: 'max_avail_hp') final String availableHip,
      @JsonKey(name: 'seats') final String seats,
      @JsonKey(name: 'engine') final String engine,
      @JsonKey(name: 'camera_views') final String cameras,
      @JsonKey(name: 'catalog_link') final String catalogLink,
      @JsonKey(name: 'virtual_catalog_link') final String virtualCatalogLink,
      @JsonKey(name: 'brand') required final CarBrand brand,
      @JsonKey(name: 'trim_level') final BasicModel trimLevel,
      @JsonKey(name: 'primary_image') final String mainImage,
      @JsonKey(name: 'secondary_images')
      final List<ImageWithColor> secondaryImage,
      @JsonKey(name: 'description') final String description}) = _$CarImpl;

  factory _Car.fromJson(Map<String, dynamic> json) = _$CarImpl.fromJson;

  @override
  int get id;
  @override
  double get price;
  @override
  int get year;
  @override
  List<String> get images;
  @override
  @JsonKey(name: 'car_name')
  BasicModel get name;
  @override
  @JsonKey(name: 'has_installment')
  bool get hasInstallment;
  @override
  @JsonKey(name: 'fuel_economy')
  String get fuel;
  @override
  @JsonKey(name: 'max_cargo')
  String get cargo;
  @override
  @JsonKey(name: 'max_avail_hp')
  String get availableHip;
  @override
  @JsonKey(name: 'seats')
  String get seats;
  @override
  @JsonKey(name: 'engine')
  String get engine;
  @override
  @JsonKey(name: 'camera_views')
  String get cameras;
  @override
  @JsonKey(name: 'catalog_link')
  String get catalogLink;
  @override
  @JsonKey(name: 'virtual_catalog_link')
  String get virtualCatalogLink;
  @override
  @JsonKey(name: 'brand')
  CarBrand get brand;
  @override
  @JsonKey(name: 'trim_level')
  BasicModel get trimLevel;
  @override
  @JsonKey(name: 'primary_image')
  String get mainImage;
  @override
  @JsonKey(name: 'secondary_images')
  List<ImageWithColor> get secondaryImage;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
