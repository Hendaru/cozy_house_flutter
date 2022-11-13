import 'package:cozy_house/modules/detail_space/pages/detail_space_page.dart';
import 'package:cozy_house/modules/home/providers/home_provider.dart';
import 'package:cozy_house/utils/app_colors.dart';
import 'package:cozy_house/utils/extension/decorations.dart';
import 'package:cozy_house/utils/extension/double_extensions.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:cozy_house/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SpaceListWidget extends StatelessWidget {
  const SpaceListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: context
            .watch<HomeProvider>()
            .dataSpace
            .map(
              (e) => Container(
                height: 15.h,
                margin: EdgeInsets.only(bottom: 3.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          e.spaceAssets!,
                          width: 40.w,
                          fit: BoxFit.cover,
                        ).cornerRadiusWithClipRRect(20),
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 20.w,
                            height: 4.h,
                            decoration: boxDecorationWithRoundedCornersWidget(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                backgroundColor: kPrimaryColor),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star_rate_rounded,
                                    color: Colors.white, size: 5.w),
                                1.w.width,
                                Text(
                                  "${e.rating!}/5",
                                  style: secondaryTextStyle(
                                    color: whiteColor,
                                    size: 10.sp,
                                  ),
                                ),
                              ],
                            )),
                          ),
                        )),
                      ],
                    ),
                    5.w.width,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        1.h.height,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.spaceName!,
                              style: boldTextStyle(
                                size: 14.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  e.price!,
                                  style: boldTextStyle(color: kPrimaryColor),
                                ),
                                Text(
                                  " / ${e.duration}",
                                  style: secondaryTextStyle(),
                                ),
                              ],
                            ),
                          ],
                        ).expand(),
                        Text(
                          e.address!,
                          style: secondaryTextStyle(),
                        ),
                        1.h.height,
                      ],
                    ).expand()
                  ],
                ),
              ).onTap(() {
                DetailSpacePage().launch(context);
              }),
            )
            .toList());
  }
}
