import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app/app/modules/home/views/home_view.dart';
import 'package:shopping_app/app/modules/login/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login(String email, String password) async {
    final box = GetStorage();
    if (emailC.text == email && passC.text == password) {
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
    } else {
      Get.defaultDialog(
        title: 'Error notification',
        middleText: 'Email and password is not available',
      );
    }
    try {
      UserCredential myUser = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (myUser.user!.emailVerified) {
        Get.offAllNamed(Routes.DASHBOARD);
      } else {
        Get.defaultDialog(
          title: "Verification email",
          middleText:
              "Your email need to be verification first \n do you want to get a email verification?",
          onConfirm: () async {
            await myUser.user!.sendEmailVerification();
            Get.back();
          },
          textConfirm: "Send again",
          textCancel: "No, thanks",
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('no user found for that email');
        Get.defaultDialog(
            title: "Error notification",
            middleText: "no user found for that email");
      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user');
        Get.defaultDialog(
            title: "Error notification",
            middleText: "wrong password provided for that user");
      } else {
        Get.defaultDialog(
          title: "Your password and email is wrong",
          middleText: "Please input your email and your password correctly",
          textConfirm: "Ok",
          onConfirm: () async {
            Get.back();
          },
        );
      }
    } catch (e) {
      Get.defaultDialog(
          title: "Error notification",
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
