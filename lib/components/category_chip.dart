import 'package:canino_food/constants/app_colors.dart';
import 'package:canino_food/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final bool isSelected;
  final String title;
  const CategoryChip(
      {super.key, required this.isSelected, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: 0.06 * size.height,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : AppColors.faintGreyColor,
          borderRadius: BorderRadius.circular(size.width * 0.04),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.regularTextStyle(size.width).copyWith(
              color: isSelected ? Colors.white : AppColors.greyColor,
            ),
          ),
        ),
      ),
    );
  }
}
