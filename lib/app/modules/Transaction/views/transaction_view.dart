import 'package:flutter/material.dart';
import 'package:shopping_app/Widgets/font.dart';

import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    Widget status(String keterangan) {
      return Container(
        width: 130,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              keterangan,
              style: discountOffers,
            ),
            Image.asset(
              'assets/gambar/dropdown.png',
              width: 12,
              height: 8,
            ),
          ],
        ),
      );
    }

    Widget detailProduct(String date, String status, int color,
        String imgProduct, String nameProduct, String quantity, String price) {
      return Container(
        width: 320,
        height: 145,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff323232),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 11, top: 10),
              child: Row(
                children: [
                  Text(
                    date,
                    style: nameP,
                  ),
                  SizedBox(width: 160),
                  Container(
                    width: 40,
                    height: 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(color),
                    ),
                    child: Center(
                      child: Text(
                        status,
                        style: statusPackage,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/gambar/Menu.png',
                    width: 13,
                    height: 13,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Image.asset(
                    imgProduct,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameProduct,
                        style: nameP,
                      ),
                      SizedBox(height: 5),
                      Text(
                        quantity,
                        style: terms,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Cost',
                        style: subTitleSetting,
                      ),
                      SizedBox(height: 3),
                      Text(
                        price,
                        style: priceTransaction,
                      )
                    ],
                  ),
                  SizedBox(width: 135),
                  Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        'Give Review',
                        style: nameP,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff1C1C1E),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: mediaQueryWidth,
                  height: bodyHeight * 0.13,
                  color: const Color(0xff4C3381),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 20),
                      child: Container(
                        width: mediaQueryWidth * 0.563,
                        height: bodyHeight * 0.15,
                        child: Stack(
                          children: [
                            TextFormField(
                              style: inputItems,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Search the items',
                                hintStyle: searchItems,
                                prefixIcon: const Icon(
                                  Icons.map,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 15, right: 20),
                              child: Image.asset(
                                'assets/gambar/search.png',
                                width: mediaQueryWidth * 0.06,
                                height: bodyHeight * 0.06,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, right: 20),
                      child: Image.asset(
                        'assets/gambar/notification.png',
                        width: mediaQueryWidth * 0.065,
                        height: bodyHeight * 0.065,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, right: 20),
                      child: Image.asset(
                        'assets/gambar/mail.png',
                        width: mediaQueryWidth * 0.065,
                        height: bodyHeight * 0.065,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, right: 20),
                      child: Image.asset(
                        'assets/gambar/MyDrawer.png',
                        width: mediaQueryWidth * 0.065,
                        height: bodyHeight * 0.065,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                status('Status'),
                status('Time'),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: SizedBox(
                height: 500,
                width: 325,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    detailProduct(
                        '10 August 2022',
                        'Done',
                        0xff25B1DD,
                        'assets/gambar/lamp.png',
                        'Luby Emergency Lamp 4000 mAh',
                        '1 piece',
                        'Rp 132.800'),
                    SizedBox(height: 20),
                    detailProduct(
                        '25 July 2022',
                        'Done',
                        0xff25B1DD,
                        'assets/gambar/pokemon.png',
                        'Pokemon Plamo Collection 48 Garchomp',
                        '1 piece',
                        'Rp 180.000'),
                    SizedBox(height: 20),
                    detailProduct(
                        '15 May 2022',
                        'Done',
                        0xff25B1DD,
                        'assets/gambar/keyboard.png',
                        'Gamen Titan II Mechanical Keyboard',
                        '1 piece',
                        'Rp 260.000'),
                    SizedBox(height: 20),
                    detailProduct(
                        '4 April 2022',
                        'Cancel',
                        0xffDD2530,
                        'assets/gambar/footrest.png',
                        'Foot Rest Air Cushion',
                        '1 piece',
                        'Rp 34.800'),
                    SizedBox(height: 50),
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
