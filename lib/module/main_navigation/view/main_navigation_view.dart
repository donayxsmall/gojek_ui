import 'package:flutter/material.dart';
import 'package:gojek_ui/core.dart';
import 'package:gojek_ui/module/main_navigation/widget/custom_bottom_navigation_bar.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      body: IndexedStack(
        index: controller.selectedIndex,
        children: [
          const HomeView(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.purple,
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        items: [
          CustomBottomNavigationBarItem(
            icon: Icons.home,
            label: 'Home',
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.discount,
            label: 'Promo',
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
          CustomBottomNavigationBarItem(
            icon: "assets/icons/order.svg",
            label: 'Orders',
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            isSvg: true,
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.chat,
            label: 'Chat',
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
        ],
        currentIndex: controller.selectedIndex,
        onTap: (index) {
          controller.updateIndex(index);
        },
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
