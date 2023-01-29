
import 'package:auth_example/src/ui/routes/route_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController();

  @override
  void onInit() {
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      //Si el usuario está vacío, regrese a la página de inicio de sesión
      if (user == null) Get.offAllNamed(RouteNames.signIn);
    });
  }

  //Retorna el usuario actual
  User? get currentUser => FirebaseAuth.instance.currentUser;
}