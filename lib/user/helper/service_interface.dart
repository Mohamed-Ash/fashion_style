// ignore_for_file: avoid_print

abstract class ServiceInterface {

  String get name;

  bool get debugPrint => false;

  void d(String message) {
    if (debugPrint) {
      print('[Service] [' + name + '] ' + message);
    }
  }


  Future initialize();

}