import 'package:cozy_house/modules/dasboard/pages/dasboard_page.dart';
import 'package:cozy_house/r.dart';
import 'package:cozy_house/utils/app_constan.dart';
import 'package:cozy_house/utils/extension/double_extensions.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:cozy_house/utils/text_style.dart';
import 'package:cozy_house/utils/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                5.h.height,
                SvgPicture.asset(
                  MainAssets.logo,
                  width: 20.w,
                ),
                3.h.height,
                Text(
                  "Find Cozy House to Stay and Happy",
                  style: boldTextStyle(
                    size: 23.sp,
                  ),
                ),
                3.h.height,
                Text(
                  "Stop membuang banyak waktu pada tempat yang tidak habitable",
                  style: secondaryTextStyle(
                    size: 16.sp,
                  ),
                ),
                5.h.height,
                PrimaryButton(
                  text: "Explore Now",
                  press: () {
                    const DasboardPage().launch(context, isNewTask: true);
                  },
                  minWidth: 50.w,
                ),
                2.h.height,
              ],
            ).paddingSymmetric(horizontal: defaultPaddingHorizontal),
            Image.asset(
              MainAssets.splash_home,
              width: 100.w,
              // height: 40.h,
              fit: BoxFit.fill,
            ).expand(),
          ],
        ),
      ),
    );
  }
}
