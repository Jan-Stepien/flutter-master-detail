class Fruit {
  String name;
  String imageUrl;
  num price;

  Fruit.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        imageUrl = json["image"],
        price = json["price"];

  Map<String, dynamic> toJson() => {
        'name': name,
        'image': imageUrl,
        'price': price,
      };
  @override
  String toString() {
    return name;
  }
}
