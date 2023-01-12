import 'package:flutter/material.dart';

class BannerCircle extends StatelessWidget {
  final double size;
  const BannerCircle({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        shape: BoxShape.circle,
      ),
    );
  }
}
