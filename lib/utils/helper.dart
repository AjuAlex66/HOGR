import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hogr/getx/controller.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Helper {
  static PersistentTabController? controller =
      PersistentTabController(initialIndex: 0);
  static final GetController getXController = Get.put(GetController());

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext? context = navigatorKey.currentContext;
  static final height = MediaQuery.of(context!).size.height;
  static final width = MediaQuery.of(context!).size.width;

  static shrink() => const SizedBox.shrink();

  // static loading(BuildContext context) {
  //   return showDialog(
  //       barrierColor: Colors.white70,
  //       barrierDismissible: false,
  //       context: context,
  //       builder: (context) => const ShowDialog());
  // }

  static pop(BuildContext context) => Navigator.pop(context);

  static allowHeight(double height) => SizedBox(height: height);

  static allowWidth(double width) => SizedBox(width: width);

  static showToast({required msg}) {
    Fluttertoast.cancel(); // for immediate stopping
    return Fluttertoast.showToast(msg: msg);
  }

  static push(dynamic route) => Navigator.push(
      context!, MaterialPageRoute(builder: ((context) => route)));
  static pushNamed(String name) => Navigator.pushNamed(
        context!,
        name,
      );

  static pushReplacement(dynamic route) {
    return Navigator.pushReplacement(
        context!, MaterialPageRoute(builder: ((context) => route)));
  }

  static pushReplacementRemove(String namedRoute) => Navigator.of(context!)
      .pushNamedAndRemoveUntil(namedRoute, (Route<dynamic> route) => false);

  static pushReplacementWithDelay(dynamic route, [delay]) =>
      Future.delayed(Duration(seconds: delay ?? 3), () async {
        Navigator.pushReplacement(
            context!, MaterialPageRoute(builder: ((context) => route)));
      });

  static showLog(String? message) => log(message!);
}
