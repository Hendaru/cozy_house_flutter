import 'package:cozy_house/r.dart';
import 'package:cozy_house/utils/extension/context_extensions.dart';
import 'package:cozy_house/utils/extension/double_extensions.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:cozy_house/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class TipsWidget extends StatelessWidget {
  const TipsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              MainAssets.guidance,
              width: 20.w,
              height: 20.w,
            ),
            3.w.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "City Guidelines",
                  style: boldTextStyle(
                    size: 14.sp,
                  ),
                ),
                Text(
                  "Updated 20 Apr",
                  style: secondaryTextStyle(),
                ),
              ],
            ).expand(),
            Icon(Icons.arrow_forward_ios_rounded,
                color: context.theme.colorScheme.secondary, size: 5.w),
            3.w.width,
          ],
        ),
        2.h.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              MainAssets.guidance1,
              width: 20.w,
              height: 20.w,
            ),
            3.w.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "City Guidelines",
                  style: boldTextStyle(
                    size: 14.sp,
                  ),
                ),
                Text(
                  "Updated 20 Apr",
                  style: secondaryTextStyle(),
                ),
              ],
            ).expand(),
            Icon(Icons.arrow_forward_ios_rounded,
                color: context.theme.colorScheme.secondary, size: 5.w),
            3.w.width,
          ],
        )
      ],
    );
  }
}
