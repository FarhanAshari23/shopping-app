import 'package:flutter/material.dart';
import 'package:shopping_app/Widgets/font.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final ProfileController profileC = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    Widget accountSetting(String mainImg, String mainTitle, String subTitle) {
      return Stack(
        children: [
          Container(
            width: 355,
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff323232),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 15,
                bottom: 25,
                right: 22,
              ),
              child: SizedBox(
                height: 40,
                width: 318,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          mainImg,
                          width: 40,
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                mainTitle,
                                style: mainTitleSetting,
                              ),
                              Text(
                                subTitle,
                                style: subTitleSetting,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset(
                          'assets/gambar/NextWhite.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff1C1E1E),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 280,
                  width: double.infinity,
                  color: Color(0xffFFFFF0),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 35,
                        top: 30,
                        right: 20,
                      ),
                      child: SizedBox(
                        width: 350,
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
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 305),
                      child: const Text(
                        'See details',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: 350,
                            height: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff191919)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 15,
                            bottom: 10,
                            right: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/gambar/wallet.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Rp. 72.538',
                                    style: nameP,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/gambar/group.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Silver',
                                    style: nameP,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/gambar/coupon.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '21 Coupons',
                                    style: nameP,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/gambar/rating.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '13 Reviews',
                                    style: nameP,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: SizedBox(
                height: 600,
                width: 360,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Account setting',
                              style: discountOffers,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        accountSetting(
                          'assets/gambar/home.png',
                          'List of Address',
                          'Set your address shipping',
                        ),
                        SizedBox(height: 35),
                        accountSetting(
                          'assets/gambar/bank.png',
                          'Bank Account',
                          'Withdraw balance to account destination',
                        ),
                        SizedBox(height: 35),
                        accountSetting(
                          'assets/gambar/ewallet.png',
                          'Instant Payment',
                          'E-wallet, credit card, and others',
                        ),
                        SizedBox(height: 35),
                        accountSetting(
                          'assets/gambar/padlock.png',
                          'Account Security',
                          'Password, PIN, and personal verification',
                        ),
                        SizedBox(height: 35),
                        accountSetting(
                          'assets/gambar/compliant.png',
                          'Account Privacy',
                          'Manage data usage & connected accounts',
                        ),
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  GestureDetector(
                                    onTap: profileC.logout,
                                    child: Container(
                                      width: 127,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xff323232),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'LOGOUT',
                                            style: discountOffers,
                                          ),
                                          Image.asset(
                                            'assets/gambar/logout.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  'Version 1.111',
                                  style: terms,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 220),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
