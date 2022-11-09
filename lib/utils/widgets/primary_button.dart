import 'package:cozy_house/utils/app_colors.dart';
import 'package:cozy_house/utils/app_constan.dart';
import 'package:cozy_house/utils/extension/decorations.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.padding,
    this.minWidth,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final Color color;
  final double? padding;
  final double? minWidth;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: radius(),
      ),
      padding: EdgeInsets.all(padding ?? defaultPaddingButton),
      color: color,
      minWidth: minWidth ?? double.infinity,
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
