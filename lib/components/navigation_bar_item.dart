import 'package:canino_food/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final void Function()? onTap;
  const NavigationBarItem(
      {super.key,
      required this.icon,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: size.height * 0.03),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  icon,
                ),
              ),
              SizedBox(
                height: size.height * 0.008,
              ),
              isSelected
                  ? Container(
                      height: 0.015 * size.width,
                      width: 0.015 * size.width,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    )
                  : SizedBox(
                      height: 0.007 * size.height,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
