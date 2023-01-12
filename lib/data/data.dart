import 'package:canino_food/constants/app_colors.dart';

import '../models/banner_model.dart';
import '../models/product_model.dart';

final List<BannerModel> banners = [
  BannerModel(
    title: "Royal Canin\nAdult Pomeraniann",
    description: "Get an interesting promo \nhere, without conditions",
    img: "assets/images/banner_image_1.png",
    color: AppColors.primaryColor,
  ),
  BannerModel(
    title: "Happy Dog\nSensible - Adult",
    description: "Get an interesting promo \nhere, without conditions",
    img: "assets/images/banner_image_2.png",
    color: AppColors.secondaryColor,
    isRight: true,
  ),
];

final List<String> categories = [
  "Food",
  "Toys",
  "Accessories",
  "Pharmacy",
];

final List<Product> products = [
  Product(
      title: "RC Kitten",
      img: "assets/images/product_1.png",
      price: 20.99,
      category: "Food"),
  Product(
      title: "Happy Dog",
      img: "assets/images/product_2.png",
      price: 22.99,
      category: "Food"),
  Product(
      title: "RC Kitten",
      img: "assets/images/product_3.png",
      price: 23.58,
      category: "Food"),
  Product(
      title: "RC Adult",
      img: "assets/images/product_4.png",
      price: 19.99,
      category: "Food"),
  Product(
      title: "Happy Dog",
      img: "assets/images/product_5.png",
      price: 18.20,
      category: "Food"),
  Product(
      title: "Happy Dog",
      img: "assets/images/product_6.png",
      price: 20.93,
      category: "Food"),
  Product(
      title: "Fipro-tech",
      img: "assets/images/product_7.png",
      price: 15.99,
      category: "Pharmacy"),
  Product(
      title: "Frontline",
      img: "assets/images/product_8.png",
      price: 20.86,
      category: "Pharmacy"),
  Product(
      title: "Veto form",
      img: "assets/images/product_9.png",
      price: 30.54,
      category: "Pharmacy"),
  Product(
      title: "Bio-canina",
      img: "assets/images/product_10.png",
      price: 23.99,
      category: "Pharmacy"),
  Product(
      title: "Capstar",
      img: "assets/images/product_11.png",
      price: 17.94,
      category: "Pharmacy"),
  Product(
      title: "Buco+",
      img: "assets/images/product_12.png",
      price: 25.99,
      category: "Pharmacy"),
];
