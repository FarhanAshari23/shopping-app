import 'package:flutter/material.dart';
import 'package:shopping_app/Widgets/font.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final ProfileController profileC = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1E1E),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 280,
                        width: double.infinity,
                        color: Color(0xffFFFFF0),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      left: 30,
                      right: 20,
                    ),
                    child: SizedBox(
                      width: 330,
                      height: 80,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/gambar/PP.png',
                            height: 80,
                            width: 80,
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muhammad Farhan Ashari',
                                style: nameProfile,
                              ),
                              Text(
                                '+62895640284677',
                                style: hpProfile,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/gambar/Edit.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                  Stack(
                    children: [
                      Container(
                        width: 350,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff191919)),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
