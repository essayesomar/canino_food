import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final String icon;
  const AppIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 0.12 * size.width,
      width: 0.12 * size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0.04 * size.width),
          boxShadow: [
            BoxShadow(
              offset: const Offset(4, 4),
              blurRadius: 0.05 * size.width,
              color: Colors.black.withOpacity(0.07),
            ),
          ]),
      child: Image.asset(icon),
    );
  }
}
