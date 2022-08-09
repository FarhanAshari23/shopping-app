import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/app/modules/login/views/login_view.dart';
import 'package:shopping_app/Widgets/font.dart';
import '../../../routes/app_pages.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xff1C1E1E),
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            bodyTextStyle: bodyOpening,
            titleTextStyle: titleOpening,
          ),
          title: "Welcome to OnMART!!",
          body: "The online market place who\ncan help find what you want",
          image: Container(
            width: 350,
            height: 350,
            child: Lottie.asset('assets/lotties/Screen 1.json',
                fit: BoxFit.contain),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            bodyTextStyle: bodyOpening,
            titleTextStyle: titleOpening,
          ),
          title: "Online shopping easier",
          body: "Just click buy on the app\nand your things is ready to go",
          image: Center(
            child: Lottie.asset('assets/lotties/Screen 2.json'),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            bodyTextStyle: bodyOpening,
            titleTextStyle: titleOpening,
          ),
          title: "What are you waiting for?",
          body: "Click done on the page and\nregister your account now",
          image: Center(
            child: Lottie.asset('assets/lotties/Screen 3.json'),
          ),
        ),
      ],
      done: Text(
        'DONE',
        style: titleRecomend,
      ),
      showNextButton: true,
      next: Text(
        'NEXT',
        style: titleRecomend,
      ),
      showBackButton: true,
      back: Text(
        'BACK',
        style: titleRecomend,
      ),
      onDone: () => Get.toNamed(Routes.LOGIN),
    );
  }
}
