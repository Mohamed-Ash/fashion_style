import 'package:fashion_style/core/service/_service_interface.dart';
import 'package:fashion_style/core/service/data_storage_service.dart';

class AuthService extends ServiceInterface {

  String? id;

  String? statusMessage;

  final DataStorageService _storageService = DataStorageService();

  final String userIdKeyName = 'user.id';

  @override
  Future initialize() async {
    id = _storageService.getString(userIdKeyName);
  }

  set userId(String id) {
    this.id = id;
  }

   /* set userStatusMessage(String statusMessage) {
    this.statusMessage = statusMessage;
  } */
  // singleton
  static AuthService? _instance;

  AuthService.init();

  factory AuthService() {
    _instance ??= AuthService.init();
    return _instance!;
  }

}