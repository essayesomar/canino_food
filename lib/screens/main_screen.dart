import 'package:canino_food/constants/app_colors.dart';
import 'package:canino_food/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../components/navigation_bar_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const Center(
      child: Text("History"),
    ),
    const Center(
      child: Text("Cart"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: size.height * 0.11,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.faintGreyColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size.width * 0.11),
            topRight: Radius.circular(size.width * 0.11),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: size.width * 0.04,
              color: AppColors.shadowColor,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavigationBarItem(
              icon: pageIndex == 0
                  ? "assets/icons/Home_filled.png"
                  : "assets/icons/Home.png",
              isSelected: pageIndex == 0,
              onTap: () {
                changePage(0);
              },
            ),
            NavigationBarItem(
              icon: pageIndex == 1
                  ? "assets/icons/Time Circle_filled.png"
                  : "assets/icons/Time Circle.png",
              isSelected: pageIndex == 1,
              onTap: () {
                changePage(1);
              },
            ),
            NavigationBarItem(
              icon: pageIndex == 2
                  ? "assets/icons/Bag_filled.png"
                  : "assets/icons/Bag.png",
              isSelected: pageIndex == 2,
              onTap: () {
                changePage(2);
              },
            ),
            NavigationBarItem(
              icon: pageIndex == 3
                  ? "assets/icons/Profile_filled.png"
                  : "assets/icons/Profile.png",
              isSelected: pageIndex == 3,
              onTap: () {
                changePage(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
