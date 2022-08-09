import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app/app/modules/home/views/home_view.dart';
import 'package:shopping_app/app/modules/login/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailC =
      TextEditingController(text: "farhanashari2346@gmail.com");
  TextEditingController passC = TextEditingController(text: 'inibukanpassword');
  FirebaseAuth auth = FirebaseAuth.instance;

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login(String email, String password) async {
    final box = GetStorage();
    if (emailC.text == "farhanashari2346@gmail.com" &&
        passC.text == 'inibukanpassword') {
      if (box.read("dataRememberme") != null) {
        box.remove('dataRememberme');
      }
      if (rememberMe.isTrue) {
        box.write(
          'dataRememberme',
          {
            'email': emailC.text,
            'password': passC.text,
          },
        );
      }
      Get.toNamed(Routes.DASHBOARD);
    } else {
      Get.defaultDialog(
        title: 'Terjadi Kesalahan',
        middleText: 'Email dan password belum tersedia',
      );
    }
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed(Routes.DASHBOARD);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('no user found for that email');
        Get.defaultDialog(
            title: "Terjadi Kesalahan",
            middleText: "no user found for that email");
      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user');
        Get.defaultDialog(
            title: "Terjadi Kesalahan",
            middleText: "wrong password provided for that user");
      }
    } catch (e) {
      Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "tidak dapat login dengan akun ini");
    }
  }

  void logout() {
    Get.to(LoginView());
  }

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
