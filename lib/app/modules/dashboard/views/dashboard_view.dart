import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopping_app/app/modules/Transaction/views/transaction_view.dart';
import 'package:shopping_app/app/modules/home/views/home_view.dart';
import 'package:shopping_app/app/modules/profile/views/profile_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                const HomeView(),
                const TransactionView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 55,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.redAccent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: controller.tabIndex,
              onTap: controller.changeTabIndex,
              items: [
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.home,
                  label: "Home",
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.cart,
                  label: "Transaction",
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.person,
                  label: "Profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
