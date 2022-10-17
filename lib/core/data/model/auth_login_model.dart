// ignore_for_file: unnecessary_this, prefer_collection_literals, unnecessary_new

class AuthLoginModel{
  String? email;
  String? password;

  AuthLoginModel({this.email, this.password,});

  AuthLoginModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['email'] = this.email;
  data['password'] = this.password;
  return data;
  }
}