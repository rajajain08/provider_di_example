import 'package:flutter/material.dart';

class NavigatorKeys {
  Map<int, GlobalKey<NavigatorState>> navigatorMap = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
  };

  GlobalKey<NavigatorState> get screenOneNavigator => navigatorMap[0];
  GlobalKey<NavigatorState> get screenTwoNavigator => navigatorMap[1];
}
