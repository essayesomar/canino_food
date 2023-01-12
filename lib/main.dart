import 'package:canino_food/constants/app_colors.dart';
import 'package:canino_food/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canino-food',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.primaryColor,
        fontFamily: 'Poppins',
      ),
      home: const MainScreen(),
    );
  }
}
