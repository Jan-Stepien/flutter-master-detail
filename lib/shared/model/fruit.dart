import 'package:json_annotation/json_annotation.dart';

part 'fruit.g.dart';

@JsonSerializable()
class Fruit {
  String name;
  @JsonKey(name: "image")
  String imageUrl;
  String description;
  @JsonKey(name: "color")
  List<String> colors;

  Fruit(this.name, this.imageUrl, this.description, this.colors);

  factory Fruit.fromJson(Map<String, dynamic> json) => _$FruitFromJson(json);

  Map<String, dynamic> toJson() => _$FruitToJson(this);

  @override
  String toString() {
    return name;
  }
}
