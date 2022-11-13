import 'package:cozy_house/modules/home/widgets/list_popular_city.dart';
import 'package:cozy_house/modules/home/widgets/list_space_recommended.dart';
import 'package:cozy_house/modules/home/widgets/tips_widget.dart';
import 'package:cozy_house/utils/app_constan.dart';
import 'package:cozy_house/utils/extension/double_extensions.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:cozy_house/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            3.h.height,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore Now",
                  style: boldTextStyle(
                    size: 20.sp,
                  ),
                ),
                1.h.height,
                Text(
                  "Mencari kosan yang cozy",
                  style: secondaryTextStyle(
                    size: 14.sp,
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: defaultPaddingHorizontal),
            3.h.height,
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Cities",
                    style: primaryTextStyle(
                      size: 14.sp,
                    ),
                  ).paddingSymmetric(horizontal: defaultPaddingHorizontal),
                  2.h.height,
                  const ListPopularCity(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      3.h.height,
                      Text(
                        "Recommended Space",
                        style: primaryTextStyle(
                          size: 14.sp,
                        ),
                      ),
                      2.h.height,
                      const SpaceListWidget(),
                      2.h.height,
                      Text(
                        "Tips & Guidance",
                        style: primaryTextStyle(
                          size: 14.sp,
                        ),
                      ),
                      2.h.height,
                      const TipsWidget(),
                    ],
                  ).paddingSymmetric(horizontal: defaultPaddingHorizontal),
                ],
              ),
            ).expand(),
          ],
        ),
      ),
    );
  }
}
