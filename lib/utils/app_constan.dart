import 'package:cozy_house/utils/app_colors.dart';
import 'package:cozy_house/utils/app_common.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cozy_house/utils/extension/context_extensions.dart';

int defaultElevation = 4;
double defaultRadius = 20;
double defaultBlurRadius = 4.0;
double defaultSpreadRadius = 1.0;
double defaultAppBarElevation = 4.0;
double defaultPaddingHorizontal = 5.w;
double defaultPaddingButton = 5.w;

//text
Color textPrimaryColorGlobal =
    getContext?.theme.colorScheme.onPrimary ?? textPrimaryColorDarkTheme;
Color textSecondaryColorGlobal =
    getContext?.theme.colorScheme.secondary ?? textSecondaryColor;
double textBoldSizeGlobal = 12.sp;
double textPrimarySizeGlobal = 14.sp;
double textSecondarySizeGlobal = 12.sp;
FontWeight fontWeightBoldGlobal = FontWeight.w700;
FontWeight fontWeightPrimaryGlobal = FontWeight.w500;
FontWeight fontWeightSecondaryGlobal = FontWeight.normal;
String? fontFamilyBoldGlobal;
String? fontFamilyPrimaryGlobal;
String? fontFamilySecondaryGlobal;

Color? defaultInkWellSplashColor;
Color? defaultInkWellHoverColor;
Color? defaultInkWellHighlightColor;
double? defaultInkWellRadius;
