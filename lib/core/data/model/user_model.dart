class UserModel{
  int? id;
  String? name;
  String? age;
  String? phoneNumber;
  String? address;
  String? gender;
  // String? image;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    address = json['address'];
  }

}


/*       "id": 1,
        "name": "Jack",
        "address": "USA",
        "phoneNumber": "01235555788",
        "gender": "male",
        "age": "25",
        "image": "dffsdfds" */