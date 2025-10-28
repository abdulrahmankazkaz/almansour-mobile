// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num?)?.toDouble() ?? 0,
      year: (json['year'] as num?)?.toInt() ?? 0,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['car_name'] == null
          ? const BasicModel()
          : BasicModel.fromJson(json['car_name'] as Map<String, dynamic>),
      hasInstallment: json['has_installment'] as bool? ?? false,
      fuel: json['fuel_economy'] as String? ?? '',
      cargo: json['max_cargo'] as String? ?? '',
      availableHip: json['max_avail_hp'] as String? ?? '',
      seats: json['seats'] as String? ?? '',
      engine: json['engine'] as String? ?? '',
      cameras: json['camera_views'] as String? ?? '',
      catalogLink: json['catalog_link'] as String? ?? '',
      virtualCatalogLink: json['virtual_catalog_link'] as String? ?? '',
      brand: CarBrand.fromJson(json['brand'] as Map<String, dynamic>),
      trimLevel: json['trim_level'] == null
          ? const BasicModel()
          : BasicModel.fromJson(json['trim_level'] as Map<String, dynamic>),
      mainImage: json['primary_image'] as String? ?? '',
      secondaryImage: (json['secondary_images'] as List<dynamic>?)
              ?.map((e) => ImageWithColor.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'year': instance.year,
      'images': instance.images,
      'car_name': instance.name,
      'has_installment': instance.hasInstallment,
      'fuel_economy': instance.fuel,
      'max_cargo': instance.cargo,
      'max_avail_hp': instance.availableHip,
      'seats': instance.seats,
      'engine': instance.engine,
      'camera_views': instance.cameras,
      'catalog_link': instance.catalogLink,
      'virtual_catalog_link': instance.virtualCatalogLink,
      'brand': instance.brand,
      'trim_level': instance.trimLevel,
      'primary_image': instance.mainImage,
      'secondary_images': instance.secondaryImage,
      'description': instance.description,
    };
