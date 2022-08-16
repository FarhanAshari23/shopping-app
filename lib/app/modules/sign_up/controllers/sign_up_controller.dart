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
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await myUser.user!.sendEmailVerification();
      Get.defaultDialog(
        title: "Verification Email",
        middleText: "Check your email ($email) to verification your account",
        onConfirm: () {
          Get.back();
          Get.back();
        },
        textConfirm: "Yes, i will check my email",
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is to weak');
        Get.defaultDialog(
            title: "Error notification",
            middleText: "The password provided is to weak");
      } else if (e.code == 'email-already-in-use') {
        print('The account is already exists for that email');
        Get.defaultDialog(
            title: "Error notification",
            middleText: "The account is already exists for that email");
      }
    } catch (e) {
      Get.defaultDialog(
          title: "Error notification",
          middleText: "Can't login with this account");
    }
  }

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
