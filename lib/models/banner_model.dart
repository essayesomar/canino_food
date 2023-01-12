import 'dart:ui';

class BannerModel {
  final String title, description, img;
  final Color color;
  final bool isRight;

  BannerModel(
      {required this.title,
      required this.description,
      required this.img,
      required this.color,
      this.isRight = false});
}
