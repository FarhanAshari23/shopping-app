import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_pages.dart';

class SignUpController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isHidden = true.obs;
  void signup(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
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

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
