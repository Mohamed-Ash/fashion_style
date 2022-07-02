import 'package:fashion_style/core/data/model/auth_register_model.dart';
import 'package:fashion_style/core/data/web_service/auth_register_web_service.dart';

class AuthRegisterRepository{
  final AuthRegisterWebService authRegisterWebService;

  AuthRegisterRepository(this.authRegisterWebService);

  Future<List<AuthRegisterModel>> postAuthRepistory()async{
    final postAuth = await authRegisterWebService.postRegister();
    return postAuth.map((e) => AuthRegisterModel.fromJson(e)).toList();

  }
}