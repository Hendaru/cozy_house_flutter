import 'package:cozy_house/modules/home/providers/home_provider.dart';
import 'package:cozy_house/utils/app_constan.dart';
import 'package:cozy_house/utils/extension/context_extensions.dart';
import 'package:cozy_house/utils/extension/decorations.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:cozy_house/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class ListPopularCity extends StatelessWidget {
  const ListPopularCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
          children: context
              .watch<HomeProvider>()
              .dataCity
              .map(
                (e) => Container(
                  decoration: boxDecorationWithRoundedCornersWidget(
                    backgroundColor:
                        context.theme.colorScheme.onPrimaryContainer,
                  ),
                  width: 35.w,
                  margin: EdgeInsets.only(right: 3.w),
                  child: Column(
                    children: [
                      Image.asset(
                        e.cityAssets!,
                        width: 100.w,
                        // height: 40.h,
                        fit: BoxFit.cover,
                      ).cornerRadiusWithClipRRectOnly(
                          topLeft: 20, topRight: 20),
                      Text(
                        e.cityName!,
                        style: boldTextStyle(),
                      ).paddingSymmetric(vertical: 2.h),
                    ],
                  ),
                ),
              )
              .toList()),
    );
  }
}
