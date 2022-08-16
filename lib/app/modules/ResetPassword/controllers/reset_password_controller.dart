import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResetPasswordController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isHidden = true.obs;

  void reset(String email) async {
    if (email != "" && GetUtils.isEmail(email)) {
      try {
        await auth.sendPasswordResetEmail(email: email);
        Get.defaultDialog(
            title: "Succes",
            middleText: "Check your $email for reset your password",
            onConfirm: () {
              Get.back();
              Get.back();
            },
            textConfirm: "Yes, I'm understand");
      } catch (e) {
        Get.defaultDialog(
          title: "Error",
          middleText: "Email is not defined.",
        );
      }
    } else {
      Get.defaultDialog(
        title: "Error",
        middleText: "Email is not defined.",
      );
    }
  }

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
