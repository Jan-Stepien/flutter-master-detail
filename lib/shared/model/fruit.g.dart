// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fruit _$FruitFromJson(Map<String, dynamic> json) {
  return Fruit(
    json['name'] as String,
    json['image'] as String,
    json['description'] as String,
    (json['color'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$FruitToJson(Fruit instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.imageUrl,
      'description': instance.description,
      'color': instance.colors,
    };
