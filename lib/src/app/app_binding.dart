import 'package:prototipo_app_biblioteca_flutter/src/app/controllers/app_controller.dart';
import 'package:prototipo_app_biblioteca_flutter/src/app/controllers/auth_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  const AppBinding();
  @override
  void dependencies() {
    //Inyectamos las dependencias
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.put<AppController>(AppController(), permanent: true);
  }
}
