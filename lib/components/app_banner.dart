import 'package:canino_food/constants/app_text_styles.dart';
import 'package:canino_food/models/banner_model.dart';
import 'package:flutter/material.dart';

import 'banner_circle.dart';

class AppBanner extends StatelessWidget {
  final BannerModel banner;

  const AppBanner({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(left: size.width * 0.03),
            height: size.height * 0.17,
            width: size.width * 0.84,
            decoration: BoxDecoration(
              color: banner.color,
              borderRadius: BorderRadius.circular(size.width * 0.06),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -size.width * 0.013,
                  top: -size.height * 0.03,
                  child: BannerCircle(
                    size: size.width * 0.18,
                  ),
                ),
                Positioned(
                  left: size.width * 0.13,
                  top: -size.height * 0.06,
                  child: BannerCircle(
                    size: size.width * 0.25,
                  ),
                ),
                Positioned(
                  left: size.width * 0.23,
                  bottom: -size.height * 0.017,
                  child: BannerCircle(
                    size: size.width * 0.14,
                  ),
                ),
                if (!banner.isRight)
                  Positioned(
                    right: size.width * 0.67,
                    bottom: -size.height * 0.07,
                    child: BannerCircle(
                      size: size.width * 0.39,
                    ),
                  ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: banner.isRight
                                ? size.width * 0.06
                                : size.width * 0.36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              banner.title,
                              style: AppTextStyles.titleStyle(size.width)
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              banner.description,
                              style: AppTextStyles.regularTextStyle(size.width)
                                  .copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: banner.isRight ? size.height * 0.02 : null,
          left: banner.isRight ? null : -size.width * 0.03,
          right: banner.isRight ? -size.width * 0.04 : null,
          child: Image.asset(
            banner.img,
          ),
        ),
      ],
    );
  }
}
