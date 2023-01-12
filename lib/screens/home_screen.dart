import 'package:canino_food/components/app_banner.dart';
import 'package:canino_food/components/category_chip.dart';
import 'package:canino_food/components/product_card.dart';
import 'package:flutter/material.dart';
import '../components/app_icon_button.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../controllers/products_controller.dart';
import '../data/data.dart';
import '../models/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int selectedIndex;
  late List<Product> products;

  @override
  void initState() {
    selectedIndex = 0;
    products = ProductController.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.06 * size.width,
                      right: 0.06 * size.width,
                      top: 0.02 * size.height),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppIconButton(icon: "assets/icons/Search.png"),
                      Text(
                        "Canino-food",
                        style: AppTextStyles.titleStyle(size.width)
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      const AppIconButton(
                          icon: "assets/icons/Notification.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.02 * size.height,
                ),
                SizedBox(
                  height: 0.25 * size.height,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: banners.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                        right:
                            index == banners.length - 1 ? 0.03 * size.width : 0,
                        left: index == 0 ? 0.03 * size.width : 0,
                      ),
                      child: AppBanner(
                        banner: banners[index],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.06 * size.width),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: AppTextStyles.titleStyle(size.width),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: AppTextStyles.mediumTextStyle(size.width)
                              .copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.06 * size.height,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length + 1,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                          right: index == categories.length
                              ? 0.06 * size.width
                              : 0.017 * size.width,
                          left: index == 0
                              ? 0.06 * size.width
                              : 0.017 * size.width),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;

                            products = index == 0
                                ? ProductController.getProducts()
                                : ProductController.getProductsByCategory(
                                    categories[index - 1]);
                          });
                        },
                        child: CategoryChip(
                            isSelected: index == selectedIndex,
                            title: index == 0 ? "All" : categories[index - 1]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.06 * size.width,
                      right: 0.06 * size.width,
                      top: 0.04 * size.height),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Seller",
                        style: AppTextStyles.titleStyle(size.width),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: AppTextStyles.mediumTextStyle(size.width)
                              .copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          products.isEmpty
              ? SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.04 * size.height),
                    child: const Center(
                      child: Text("No results found!"),
                    ),
                  ),
                )
              : SliverPadding(
                  padding: EdgeInsets.only(
                    left: 0.06 * size.width,
                    right: 0.06 * size.width,
                    bottom: 0.03 * size.height,
                  ),
                  sliver: SliverGrid.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 0.04 * size.width,
                      mainAxisSpacing: 0.03 * size.height,
                      childAspectRatio:
                          (0.4 * size.width) / (0.25 * size.height),
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) =>
                        ProductCard(product: products[index]),
                  ),
                ),
        ],
      ),
    );
  }
}
