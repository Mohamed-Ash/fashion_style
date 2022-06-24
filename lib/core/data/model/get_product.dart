class ProductModel {
  int? id;
  String? name;
  String? description;
  String? imagePath;
  double? price;
  String? insertedon;

  ProductModel(
      {this.id,
      this.name,
      this.description,
      this.imagePath,
      this.price,
      this.insertedon});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    imagePath = json['imagePath'];
    price = json['price'];
    insertedon = json['insertedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['imagePath'] = imagePath;
    data['price'] = price;
    data['insertedon'] = insertedon;
    return data;
  }
}