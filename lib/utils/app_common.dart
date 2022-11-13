import 'package:cozy_house/main.dart';
import 'package:cozy_house/utils/extension/decorations.dart';
import 'package:flutter/material.dart';

BuildContext? get getContext => navigatorKey.currentState?.overlay?.context;

void finish(BuildContext context, [Object? result]) {
  if (Navigator.canPop(context)) Navigator.pop(context, result);
}

/// Redirect to given widget without context
Future<T?> push<T>(
  Widget widget, {
  bool isNewTask = false,
  PageRouteAnimation? pageRouteAnimation,
  Duration? duration,
}) async {
  if (isNewTask) {
    return await Navigator.of(getContext!).pushAndRemoveUntil(
      buildPageRoute(widget, pageRouteAnimation, duration),
      (route) => false,
    );
  } else {
    return await Navigator.of(getContext!).push(
      buildPageRoute(widget, pageRouteAnimation, duration),
    );
  }
}

/// Dispose current screen or close current dialog
void pop([Object? object]) {
  if (Navigator.canPop(getContext!)) Navigator.pop(getContext!, object);
}
