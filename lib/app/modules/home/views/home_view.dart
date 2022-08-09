import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Widgets/font.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final imgTrendings = [
      'assets/gambar/Monitor.png',
      'assets/gambar/Mouse.png',
      'assets/gambar/Headset.png',
      'assets/gambar/Webcam.png',
    ];
    final titleProducts = [
      'XIAOMI 24 INCH',
      'MOUSE LOGITECH G102',
      'HEADSET LOGITECH G431',
      'ASUS WEBCAM C3',
    ];
    Widget items(
      String imgUrl,
      String title,
      String subTitle,
    ) {
      return Row(
        children: [
          Image.asset(
            imgUrl,
            width: mediaQueryWidth * 0.065,
            height: bodyHeight * 0.065,
          ),
          SizedBox(width: mediaQueryWidth * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleItems,
              ),
              Text(
                subTitle,
                style: detailItems,
              ),
            ],
          ),
        ],
      );
    }

    Widget products(String imgUrl, String nameProduct) {
      return Column(
        children: [
          Stack(
            children: [
              Container(
                width: mediaQueryWidth * 0.13,
                height: bodyHeight * 0.07,
                decoration: BoxDecoration(
                  color: const Color(0xffFAF9F6),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 4),
                child: Image.asset(
                  imgUrl,
                  width: mediaQueryWidth * 0.1,
                  height: bodyHeight * 0.06,
                ),
              ),
            ],
          ),
          Text(
            nameProduct,
            textAlign: TextAlign.center,
            style: nameP,
          )
        ],
      );
    }

    Widget promo(
      String offers,
      String subOffers,
      String detailTerms,
      String imgUrlWallpaper,
      String imgUrlItems,
    ) {
      return Stack(
        children: [
          Image.asset(
            imgUrlWallpaper,
            height: bodyHeight * 0.1,
            width: mediaQueryWidth * 0.75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      offers,
                      style: titleOffers,
                    ),
                    Text(
                      subOffers,
                      style: discountOffers,
                    ),
                    Text(
                      detailTerms,
                      style: terms,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230, top: 10),
            child: Image.asset(
              imgUrlItems,
              height: bodyHeight * 0.07,
              width: mediaQueryWidth * 0.15,
            ),
          ),
        ],
      );
    }

    Widget features(String imgUrlFeature, String title) {
      return Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/gambar/Ellipse.png',
                height: bodyHeight * 0.07,
                width: mediaQueryWidth * 0.15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Image.asset(
                  imgUrlFeature,
                  height: bodyHeight * 0.04,
                  width: mediaQueryWidth * 0.15,
                ),
              ),
            ],
          ),
          SizedBox(height: bodyHeight * 0.01),
          Text(
            title,
            style: nameP,
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    Widget listRecomend(
      String imgUrlProduct,
      String titleP,
      String priceP,
      String location,
      String payment,
      String rating,
    ) {
      return Stack(
        children: [
          Container(
            height: bodyHeight * 0.4,
            width: mediaQueryWidth * 0.28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFF8753),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 6),
                child: Image.asset(
                  imgUrlProduct,
                  width: mediaQueryWidth * 0.25,
                  height: bodyHeight * 0.075,
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Container(
                      height: bodyHeight * 0.135,
                      width: mediaQueryWidth * 0.245,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 12),
                    child: Container(
                      width: mediaQueryWidth * 0.2,
                      height: bodyHeight * 0.1,
                      child: Column(
                        children: [
                          Text(
                            titleP,
                            style: titleProduct,
                          ),
                          Text(
                            priceP,
                            style: priceProduct,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/gambar/placeholder.png',
                              height: bodyHeight * 0.02,
                              width: mediaQueryWidth * 0.035,
                            ),
                            SizedBox(width: mediaQueryWidth * 0.008),
                            Text(
                              location,
                              style: detailProduct,
                            ),
                          ],
                        ),
                        SizedBox(height: bodyHeight * 0.01),
                        Row(
                          children: [
                            Image.asset(
                              'assets/gambar/wallet.png',
                              height: bodyHeight * 0.02,
                              width: mediaQueryWidth * 0.035,
                            ),
                            SizedBox(width: mediaQueryWidth * 0.008),
                            Text(
                              payment,
                              style: detailProduct,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 45),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/gambar/star.png',
                          height: bodyHeight * 0.015,
                          width: mediaQueryWidth * 0.025,
                        ),
                        SizedBox(width: mediaQueryWidth * 0.008),
                        Text(
                          rating,
                          style: rateProduct,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    Widget topProduct(String items, String detailItems, String imgUrl) {
      return Stack(
        children: [
          Container(
            width: mediaQueryWidth * 0.3,
            height: bodyHeight * 0.085,
            decoration: BoxDecoration(
                color: const Color(0xffF3FFF3),
                borderRadius: BorderRadius.circular(10)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items,
                      style: itemsTopProduct,
                    ),
                    SizedBox(height: bodyHeight * 0.004),
                    Text(
                      detailItems,
                      style: priceProduct,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 8),
                child: Image.asset(
                  imgUrl,
                  height: bodyHeight * 0.06,
                  width: mediaQueryWidth * 0.095,
                ),
              )
            ],
          ),
        ],
      );
    }

    Widget topBrand(String imgBrand, String titleBrand) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/gambar/EllipseWhite.png',
                width: 51,
                height: 51,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11, top: 10),
                child: Image.asset(
                  imgBrand,
                  width: 29,
                  height: 29,
                ),
              )
            ],
          ),
          Text(
            titleBrand,
            style: detailItems,
          )
        ],
      );
    }

    Widget trendingP(String imgTrending, String titleProcuct, int index) {
      return Column(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
              imgTrending,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: bodyHeight * 0.02),
          Text(
            titleProcuct,
            style: nameP,
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff1C1C1E),
      body: SingleChildScrollView(
        child: Column(
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
                        width: mediaQueryWidth * 0.75,
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
                        'assets/gambar/square.png',
                        width: mediaQueryWidth * 0.1,
                        height: bodyHeight * 0.1,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: mediaQueryWidth,
              height: bodyHeight * 0.78,
              child: ListView(
                padding: const EdgeInsets.only(top: 1),
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: mediaQueryWidth * 0.9,
                                height: mediaQueryHeight * 0.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  top: 12,
                                ),
                                child: items('assets/gambar/wallet.png',
                                    'Rp.72.654', 'E-Wallet'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 135,
                                  top: 12,
                                ),
                                child: items('assets/gambar/brand-identity.png',
                                    '6 items', 'Transactions'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 250,
                                  top: 12,
                                ),
                                child: items('assets/gambar/money.png', '4.950',
                                    'Coins'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQueryHeight * 0.03),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          width: mediaQueryHeight,
                          height: bodyHeight * 0.14,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              products(
                                  'assets/gambar/toy.png', 'TOYS AND\nHOBBY'),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              products('assets/gambar/dress.png', 'DRESS'),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              products('assets/gambar/cloth.png', 'SHIRTS'),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              products(
                                  'assets/gambar/laptop.png', 'ELECT\nRONICS'),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              products('assets/gambar/military-vehicle.png',
                                  'OTOMO\nTIVE'),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              products(
                                  'assets/gambar/game-console.png', 'CONSOLE'),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              products('assets/gambar/basketball-player.png',
                                  'SPORTS'),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              products('assets/gambar/sneakers.png', 'SHOES'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQueryHeight * 0.015),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          width: mediaQueryWidth,
                          height: bodyHeight * 0.1,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              promo(
                                'Buy Gadgets on Sunday',
                                'DISCOUNT 30%',
                                'these terms and condition apply',
                                'assets/gambar/Wallpaper2.png',
                                'assets/gambar/smartphone.png',
                              ),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              promo(
                                'Buy Gadgets on Sunday',
                                'DISCOUNT 30%',
                                'these terms and condition apply',
                                'assets/gambar/Wallpaper1.png',
                                'assets/gambar/smartphone.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQueryHeight * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          width: mediaQueryHeight,
                          height: bodyHeight * 0.14,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              features(
                                  'assets/gambar/calendar.png', 'TODAY\nDEALS'),
                              SizedBox(width: mediaQueryWidth * 0.03),
                              features(
                                  'assets/gambar/promo.png', 'FLASH\nSALE'),
                              SizedBox(width: mediaQueryWidth * 0.03),
                              features('assets/gambar/payment-method.png',
                                  'CASH ON\nDELIVERY'),
                              SizedBox(width: mediaQueryWidth * 0.03),
                              features('assets/gambar/brand-identity.png',
                                  'LOCAL\nPRODUCT'),
                              SizedBox(width: mediaQueryWidth * 0.03),
                              features('assets/gambar/gift-voucher.png',
                                  'ALL\nVOUCHER'),
                              SizedBox(width: mediaQueryWidth * 0.03),
                              features('assets/gambar/fast-delivery.png',
                                  'FREE\nSHIPPING'),
                              SizedBox(width: mediaQueryWidth * 0.03),
                              features(
                                  'assets/gambar/salary.png', 'SALARY\nPROMO'),
                              SizedBox(width: mediaQueryWidth * 0.03),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQueryHeight * 0.02),
                      Stack(
                        children: [
                          Container(
                            width: mediaQueryWidth,
                            height: bodyHeight * 0.3,
                            decoration: const BoxDecoration(
                              color: Color(0xffFF6929),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'RECOMMENDED\nPRODUCTS\nFOR YOU',
                                      textAlign: TextAlign.left,
                                      style: titleRecomend,
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Image.asset(
                                      'assets/gambar/box.png',
                                      height: 82,
                                      width: 82,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: mediaQueryWidth * 0.05),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: SizedBox(
                                  height: 180,
                                  width: 240,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      listRecomend(
                                        'assets/gambar/Vidar.jpg',
                                        'HG 1/144 GUNDAM VIDAR',
                                        'Rp.210.000',
                                        'Semarang',
                                        'Cash on Delivery',
                                        '4.3 | 17 sold',
                                      ),
                                      SizedBox(width: mediaQueryWidth * 0.03),
                                      listRecomend(
                                        'assets/gambar/Legion.jpg',
                                        'LEGION 5 PRO RYZEN 7',
                                        'Rp.25.100.000',
                                        'Jakarta Pusat',
                                        'Paylater',
                                        '4.8 | 12 sold',
                                      ),
                                      SizedBox(width: mediaQueryWidth * 0.03),
                                      listRecomend(
                                        'assets/gambar/Vidar.jpg',
                                        'HG 1/144 GUNDAM VIDAR',
                                        'Rp.210.000',
                                        'Semarang',
                                        'Cash on Delivery',
                                        '4.3 | 17 sold',
                                      ),
                                      SizedBox(width: mediaQueryWidth * 0.03),
                                      listRecomend(
                                        'assets/gambar/Vidar.jpg',
                                        'HG 1/144 GUNDAM VIDAR',
                                        'Rp.210.000',
                                        'Semarang',
                                        'Cash on Delivery',
                                        '4.3 | 17 sold',
                                      ),
                                      SizedBox(width: mediaQueryWidth * 0.03),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQueryHeight * 0.04),
                      Stack(
                        children: [
                          Container(
                            width: mediaQueryWidth,
                            height: bodyHeight * 0.17,
                            decoration: const BoxDecoration(
                              color: Color(0xffB8A1CD),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        'TOP PRODUCTS',
                                        style: discountOffers,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 180),
                                      child: Image.asset(
                                        'assets/gambar/refresh.png',
                                        height: 10,
                                        width: 10,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6),
                                      child: Text(
                                        'refresh',
                                        style: priceProduct,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: mediaQueryHeight * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  topProduct(
                                    'Watch',
                                    '5K Sold',
                                    'assets/gambar/Watch.png',
                                  ),
                                  SizedBox(width: mediaQueryWidth * 0.02),
                                  topProduct(
                                    'Shirt',
                                    '7.8K Sold',
                                    'assets/gambar/Shirt.png',
                                  ),
                                  SizedBox(width: mediaQueryWidth * 0.02),
                                  topProduct(
                                    'Gunpla',
                                    '2K Sold',
                                    'assets/gambar/Gundam.png',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQueryHeight * 0.04),
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: bodyHeight * 0.27,
                                width: mediaQueryWidth,
                                decoration: const BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 250, top: 7),
                                child: Text(
                                  'TOP BRANDS',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff2D3689),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 192,
                                  top: 42,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        topBrand(
                                          'assets/gambar/asus.png',
                                          'ASUS',
                                        ),
                                        topBrand(
                                          'assets/gambar/bandai.png',
                                          'BANDAI',
                                        ),
                                        topBrand(
                                          'assets/gambar/xiaomi.png',
                                          'XIAOMI',
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        topBrand(
                                          'assets/gambar/lenovo.png',
                                          'LENOVO',
                                        ),
                                        topBrand(
                                          'assets/gambar/logitech.png',
                                          'LOGITECH',
                                        ),
                                        topBrand(
                                          'assets/gambar/samsung.png',
                                          'SAMSUNG',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: bodyHeight * 0.27,
                                width: mediaQueryWidth * 0.5,
                                decoration: const BoxDecoration(
                                  color: Color(0xffD72323),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 7),
                                child: Text(
                                  '# TRENDING PRODUCTS',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 195, top: 40),
                                child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                    height: 135,
                                    autoPlay: true,
                                    autoPlayInterval:
                                        const Duration(seconds: 4),
                                  ),
                                  itemCount: imgTrendings.length,
                                  itemBuilder: (context, index, realIndex) {
                                    final imgTrending = imgTrendings[index];
                                    final titleProduct = titleProducts[index];
                                    return trendingP(
                                      imgTrending,
                                      titleProduct,
                                      index,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 20,
                        width: double.infinity,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
