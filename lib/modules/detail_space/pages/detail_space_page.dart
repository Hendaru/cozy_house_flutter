import 'package:cozy_house/modules/detail_space/providers/detail_space_provider.dart';
import 'package:cozy_house/r.dart';
import 'package:cozy_house/utils/app_colors.dart';
import 'package:cozy_house/utils/app_common.dart';
import 'package:cozy_house/utils/app_constan.dart';
import 'package:cozy_house/utils/extension/context_extensions.dart';
import 'package:cozy_house/utils/extension/decorations.dart';
import 'package:cozy_house/utils/extension/double_extensions.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:cozy_house/utils/text_style.dart';
import 'package:cozy_house/utils/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class DetailSpacePage extends StatefulWidget {
  const DetailSpacePage({Key? key}) : super(key: key);

  @override
  State<DetailSpacePage> createState() => _DetailSpacePageState();
}

class _DetailSpacePageState extends State<DetailSpacePage> {
  @override
  void initState() {
    super.initState();
    context.read<DetailSpaceProvider>().init();
  }
  @override
  Widget build(BuildContext context) {
    print("horeeeee---------------------");
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Consumer<DetailSpaceProvider>(
                  builder: (contex, state, child) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: state.detailScroll? 40.h:20.h,
                      child: Image.asset(
                        MainAssets.r_4,
                        width: 100.w,
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 13.w,
                          height: 13.w,
                          decoration: boxDecorationDefaultWidget(
                              shape: BoxShape.circle, color: whiteColor),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 5.w,
                            color: kPrimaryColor,
                          ),
                        ).onTap(() {
                          pop(context);
                        }),
                        SvgPicture.asset(
                          MainAssets.btn_wishlist,
                          width: 13.w,
                        ),
                      ],
                    ).paddingOnly(
                        top: 5.h,
                        right: defaultPaddingHorizontal,
                        left: defaultPaddingHorizontal),
                  ),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 5.h,
                    width: 100.w,
                    decoration: boxDecorationWithRoundedCornersWidget(
                       border: Border.all(
        width: 0, color: context.theme.scaffoldBackgroundColor),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(defaultRadius),
                            topLeft: Radius.circular(defaultRadius)),
                        backgroundColor: context.theme.scaffoldBackgroundColor),
                  ),
                ))
              ],
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller:
                  context.read<DetailSpaceProvider>().detailScrollController,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kuretakeso Hott",
                        style: boldTextStyle(
                          size: 18.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "50",
                            style: boldTextStyle(
                                color: kPrimaryColor, size: 16.sp),
                          ),
                          Text(
                            " / mount",
                            style: secondaryTextStyle(size: 16.sp),
                          ),
                        ],
                      ),
                      3.h.height,
                      Text(
                        "Main Facilities",
                        style: primaryTextStyle(
                          size: 14.sp,
                        ),
                      ),
                      2.h.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Facilities(
                            asset: MainAssets.ic_kitchen,
                            item: "2",
                            itemName: "kitchen",
                          ),
                          Facilities(
                            asset: MainAssets.ic_bed,
                            item: "3",
                            itemName: "badroom",
                          ),
                          Facilities(
                            asset: MainAssets.ic_lemari,
                            item: "3",
                            itemName: "Big Lemari",
                          )
                        ],
                      ),
                      3.h.height,
                      Text(
                        "Photos",
                        style: primaryTextStyle(
                          size: 14.sp,
                        ),
                      ),
                      2.h.height,
                    ],
                  ).paddingSymmetric(horizontal: defaultPaddingHorizontal),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPaddingHorizontal),
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Image.asset(MainAssets.r_1,
                                width: 35.w, height: 13.h, fit: BoxFit.cover)
                            .cornerRadiusWithClipRRect(defaultRadius)
                            .paddingOnly(right: 2.w),
                        Image.asset(MainAssets.r_2,
                                width: 35.w, height: 13.h, fit: BoxFit.cover)
                            .cornerRadiusWithClipRRect(defaultRadius)
                            .paddingOnly(right: 2.w),
                        Image.asset(MainAssets.r_3,
                                width: 35.w, height: 13.h, fit: BoxFit.cover)
                            .cornerRadiusWithClipRRect(defaultRadius)
                            .paddingOnly(right: 2.w),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      3.h.height,
                      Text(
                        "Location",
                        style: primaryTextStyle(
                          size: 14.sp,
                        ),
                      ),
                      1.h.height,
                      Text(
                        "Jln. Kappan Sukses No. 20, Palembang",
                        style: secondaryTextStyle(),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: defaultPaddingHorizontal),
                  3.h.height,
                  Center(
                    child: PrimaryButton(
                      text: "Book Now",
                      press: () {},
                      // minWidth: 50.w,
                    ),
                  ).paddingSymmetric(horizontal: defaultPaddingHorizontal),
                  2.h.height,
                ],
              ),
            ).expand(),
          ],
        ),
      ),
    );
  }
}

class Facilities extends StatelessWidget {
  const Facilities(
      {Key? key,
      required this.asset,
      required this.item,
      required this.itemName})
      : super(key: key);

  final String asset;
  final String item;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          asset,
          width: 10.w,
        ),
        2.h.height,
        Row(
          children: [
            Text(
              item,
              style: boldTextStyle(
                color: kPrimaryColor,
              ),
            ),
            2.w.width,
            Text(
              itemName,
              style: secondaryTextStyle(),
            ),
          ],
        ),
      ],
    );
  }
}
