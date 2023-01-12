import 'package:canino_food/constants/app_colors.dart';
import 'package:canino_food/constants/app_text_styles.dart';
import 'package:canino_food/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.03 * size.width),
        color: AppColors.faintGreyColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.018 * size.width,
                    left: 0.018 * size.width,
                    right: 0.018 * size.width),
                child: Image.asset(
                  product.img,
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 0.03 * size.width,
                right: 0.03 * size.width,
                bottom: 0.03 * size.width),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: AppTextStyles.regularTextStyle(size.width),
                    ),
                    Text(
                      "\$${product.price.toStringAsFixed(2).replaceFirst('.', ',')}",
                      style: AppTextStyles.semiBoldTextStyle(size.width),
                    ),
                  ],
                ),
                Material(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(0.08 * size.width),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(0.08 * size.width),
                    onTap: () {},
                    child: SizedBox(
                      height: 0.08 * size.width,
                      width: 0.08 * size.width,
                      child: Center(
                        child: Image.asset(
                          "assets/icons/plus.png",
                          height: 0.04 * size.width,
                          width: 0.04 * size.width,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
