import 'package:prototipo_app_biblioteca_flutter/src/ui/pages/signIn/sign_in_controller.dart';
import 'package:get/get.dart';

class SignInBinding implements Bindings {
  const SignInBinding();

  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
