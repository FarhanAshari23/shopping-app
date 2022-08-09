import 'package:flutter/material.dart';
import 'package:shopping_app/Widgets/font.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final LoginController loginC = Get.put(LoginController());
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.read('dataRememberme') != null) {
      loginC.emailC.text = box.read('dataRememberme')["email"];
      loginC.passC.text = box.read('dataRememberme')["password"];
    }
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
                  controller: loginC.emailC,
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
                    controller: loginC.passC,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    style: emailTitle,
                    obscureText: loginC.isHidden.value,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () => loginC.isHidden.toggle(),
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
                SizedBox(height: 20),
                Obx(
                  () => CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      'Remember me',
                      style: rememberMe,
                    ),
                    value: loginC.rememberMe.value,
                    onChanged: (value) {
                      loginC.rememberMe.toggle();
                    },
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.SIGN_UP),
                      child: Text('REGISTER NOW'),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(182, 58),
                      primary: Color(0xffF9F6EE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () => loginC.login(
                        controller.emailC.text, controller.passC.text),
                    child: Text(
                      'LOGIN',
                      style: loginButton,
                    ),
                  ),
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
