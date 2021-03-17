class Fruit {
  String name;
  String imageUrl;
  String description;

  Fruit.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        imageUrl = json["image"],
        description = json["description"];

  Map<String, dynamic> toJson() => {
        'name': name,
        'image': imageUrl,
        'description': description
      };
  @override
  String toString() {
    return name;
  }
}
