import 'package:cozy_house/modules/dasboard/providers/dasboard_provider.dart';
import 'package:cozy_house/r.dart';
import 'package:cozy_house/utils/app_colors.dart';
import 'package:cozy_house/utils/app_constan.dart';
import 'package:cozy_house/utils/extension/context_extensions.dart';
import 'package:cozy_house/utils/extension/decorations.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../widgets/menu_dasboard.dart';

class DasboardPage extends StatefulWidget {
  const DasboardPage({Key? key}) : super(key: key);

  @override
  State<DasboardPage> createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  @override
  void initState() {
    super.initState();
    context.read<DasboardProvider>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Consumer<DasboardProvider>(builder: (context, state, widget) {
        return Container(
          decoration: boxDecorationWithRoundedCornersWidget(
            backgroundColor: context.theme.colorScheme.onPrimaryContainer,
          ),
          height: 9.h,
          margin: EdgeInsets.only(bottom: 2.h),
          child: Column(
            children: [
              Row(
                children: [
                  MenuDasboard(pos: 0, icon: MainAssets.ic_home, state: state),
                  MenuDasboard(pos: 1, icon: MainAssets.ic_mail, state: state),
                  MenuDasboard(pos: 2, icon: MainAssets.ic_card, state: state),
                  MenuDasboard(pos: 3, icon: MainAssets.ic_love, state: state),
                ],
              ).expand(),
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: state.curve,
                    color: state.currentIndex == 0
                        ? kPrimaryColor
                        : Colors.transparent,
                    width: state.currentIndex == 0 ? 100.w : 0,
                    height: 4,
                  ).paddingSymmetric(horizontal: 8.w).expand(),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: state.curve,
                    color: state.currentIndex == 1
                        ? kPrimaryColor
                        : Colors.transparent,
                    width: state.currentIndex == 1 ? 100.w : 0,
                    height: 4,
                  ).paddingSymmetric(horizontal: 8.w).expand(),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: state.curve,
                    color: state.currentIndex == 2
                        ? kPrimaryColor
                        : Colors.transparent,
                    width: state.currentIndex == 2 ? 100.w : 0,
                    height: 4,
                  ).paddingSymmetric(horizontal: 8.w).expand(),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: state.curve,
                    color: state.currentIndex == 3
                        ? kPrimaryColor
                        : Colors.transparent,
                    width: state.currentIndex == 3 ? 100.w : 0,
                    height: 4,
                  ).paddingSymmetric(horizontal: 8.w).expand(),
                ],
              ),
            ],
          ).cornerRadiusWithClipRRectOnly(bottomLeft: 20, bottomRight: 20),
        ).paddingSymmetric(horizontal: defaultPaddingHorizontal);
      }),
      body: Consumer<DasboardProvider>(builder: (context, state, widget) {
        return state.widgets[state.currentIndex];
      }),
    );
  }
}
