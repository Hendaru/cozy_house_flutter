import 'package:cozy_house/modules/card/providers/card_provider.dart';
import 'package:cozy_house/modules/dasboard/providers/dasboard_provider.dart';
import 'package:cozy_house/modules/detail_space/providers/detail_space_provider.dart';
import 'package:cozy_house/modules/email/providers/email_provider.dart';
import 'package:cozy_house/modules/home/providers/home_provider.dart';
import 'package:cozy_house/modules/like/providers/like_provider.dart';
import 'package:cozy_house/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'modules/splash/pages/splash_page.dart';
import 'modules/splash/providers/splash_provider.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => DasboardProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => EmailProvider()),
        ChangeNotifierProvider(create: (_) => CardProvider()),
        ChangeNotifierProvider(create: (_) => LikeProvider()),
        ChangeNotifierProvider(create: (_) => DetailSpaceProvider()),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          navigatorKey: navigatorKey,
          theme: lightThemeData(context),
          darkTheme: darkThemeData(context),
          home: const SplashPage(),
        );
      }),
    );
  }
}
