import 'package:flutter/material.dart';
import 'package:shopping_app/Widgets/font.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final ResetPasswordController resetC = Get.put(ResetPasswordController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1C1E1E),
        body: Padding(
          padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/gambar/Key.png',
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: 25),
                Text(
                  'Forget your password?',
                  style: resetTitle,
                ),
                SizedBox(height: 10),
                Text(
                  'Dont worry, you can reset it',
                  style: resetSubTitle,
                ),
                SizedBox(height: 50),
                TextField(
                  controller: resetC.emailC,
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
                SizedBox(height: 50),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(182, 58),
                      primary: Color(0xffF9F6EE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () => resetC.reset(controller.emailC.text),
                    child: Text(
                      'RESET',
                      style: loginButton,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => Get.back(),
                      child: Text('LOGIN'),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffF9F6EE),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/gambar/google.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Google',
                                style: googleFacebookSignin,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffF9F6EE),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/gambar/facebook.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Facebook',
                                style: googleFacebookSignin,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
