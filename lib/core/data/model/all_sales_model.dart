class AllSalesModel{
  int? id;
  String? name;
  String? description;
  String? image;
  String? phoneNumber;
  String? timeWork;
  String? workPlace;

  AllSalesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    phoneNumber = json['phoneNumber'];
    timeWork = json['timeWork'];
    workPlace = json['workPlace'];
  }
}