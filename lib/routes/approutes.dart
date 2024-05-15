import 'package:flutter/material.dart';
import 'package:hogr/views/bottomnavigation/bottomnavigation.dart';
import 'package:hogr/views/bottomnavigation/tabone.dart';
import 'package:hogr/views/pageone.dart';
import 'package:hogr/views/pagetwo.dart';

class AppRoutes {
  static String initialRoute = 'pageone';
  static String bottomNavigation = 'bottomNavigation';
  static String pagethree = 'pagethree';
  static String tabone = 'tabOne';
  static Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => const PageOne(),
    bottomNavigation: (context) => const BottomNavigation(),
    pagethree: (context) => const PageThree(),
    tabone: (context) => const Tab1()
  };
}
