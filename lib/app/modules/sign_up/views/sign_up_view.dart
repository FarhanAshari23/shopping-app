import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopping_app/app/controllers/auth_controller.dart';

import '../../../../Widgets/font.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  final SignUpController signupC = Get.put(SignUpController());
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1C1E1E),
        body: Padding(
          padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Welcome',
                  textAlign: TextAlign.left,
                  style: welcomeTitle,
                ),
                SizedBox(height: 10),
                Text(
                  'Hope you happy',
                  textAlign: TextAlign.right,
                  style: welcomeSubtitle,
                ),
                Text(
                  'using OnMart',
                  textAlign: TextAlign.right,
                  style: welcomeSubtitle,
                ),
                SizedBox(height: 70),
                TextField(
                  controller: signupC.emailC,
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  style: emailTitle,
                  decoration: InputDecoration(
                    fillColor: Color(0xffF9F6EE),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Email :',
                    hintStyle: emailTitle,
                  ),
                ),
                SizedBox(height: 20),
                Obx(
                  () => TextField(
                    controller: signupC.passC,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    style: emailTitle,
                    obscureText: signupC.isHidden.value,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () => signupC.isHidden.toggle(),
                        icon: Icon(Icons.remove_red_eye_rounded),
                      ),
                      fillColor: Color(0xffF9F6EE),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Password :',
                      hintStyle: emailTitle,
                    ),
                  ),
                ),
                SizedBox(height: 35),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.back(),
                      child: Text('LOGIN'),
                    ),
                  ],
                ),
                SizedBox(height: 55),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(182, 58),
                      primary: Color(0xffF9F6EE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () => signupC.signup(
                        controller.emailC.text, controller.passC.text),
                    child: Text(
                      'LOGIN',
                      style: loginButton,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
