import 'package:cozy_house/modules/card/pages/card_page.dart';
import 'package:cozy_house/modules/email/pages/email_page.dart';
import 'package:cozy_house/modules/home/pages/home_page.dart';
import 'package:cozy_house/modules/like/pages/like_page.dart';
import 'package:flutter/cupertino.dart';

class DasboardProvider extends ChangeNotifier {
  List<Widget> widgets = [];
  int currentIndex = 0;
  Curve curve = Curves.linearToEaseOut;

  init() {
    widgets.add(const HomePage());
    widgets.add(const EmailPage());
    widgets.add(const CardPage());
    widgets.add(const LikePage());
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
