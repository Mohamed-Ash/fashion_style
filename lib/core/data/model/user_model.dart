class UserModel{
  int? id;
  String? name;
  String? age;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
  }

}