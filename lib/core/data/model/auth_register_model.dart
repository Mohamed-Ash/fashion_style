class AuthRegisterModel {
  String? email;
  String? phoneNumber;
  String? password;
  String? confirmPassword;

  AuthRegisterModel(
      {this.email, this.phoneNumber, this.password, this.confirmPassword});

  AuthRegisterModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['password'] = password;
    data['confirmPassword'] = confirmPassword;
    return data;
  }
}