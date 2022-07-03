import 'package:fashion_style/core/data/model/user_model.dart';
import 'package:fashion_style/core/data/web_service/user_web_service.dart';

class UserRepository{
  final UserWebService? usersWebServices;

  UserRepository(this.usersWebServices);

  Future<UserModel> getUserProfile({required String id,})async{
    final userProfile = await usersWebServices?.getUserProfile(id: id);
    return UserModel.fromJson(userProfile);
  }
}