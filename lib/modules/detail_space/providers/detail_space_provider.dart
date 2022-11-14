import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailSpaceProvider extends ChangeNotifier {
  final detailScrollController = ScrollController();
  bool detailScroll = true;

  void init(){
    detailScrollController.addListener(() {
      if (detailScrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        detailScroll = false;
      }
      if (detailScrollController.offset < 0.0) {
        detailScroll = true;
      }
      notifyListeners();
    });
  }
}
