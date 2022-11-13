import 'package:cozy_house/modules/dasboard/providers/dasboard_provider.dart';
import 'package:cozy_house/utils/app_colors.dart';
import 'package:cozy_house/utils/extension/widget_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class MenuDasboard extends StatelessWidget {
  const MenuDasboard(
      {Key? key, this.pos, required this.icon, required this.state})
      : super(key: key);

  final int? pos;
  final String icon;

  final DasboardProvider state;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon,
            width: 6.w,
            height: 6.w,
            color:
                state.currentIndex == pos ? kPrimaryColor : kUnselectGreyColor)
        .onTap(() {
      state.setCurrentIndex(pos!);
    },
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent).expand();
  }
}
