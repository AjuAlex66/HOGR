import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogr/utils/helper.dart';
import 'package:hogr/views/bottomnavigation/tabone.dart';
import 'package:hogr/views/bottomnavigation/tabthree.dart';
import 'package:hogr/views/bottomnavigation/tabtwo.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<String> tabs = ["Tab 1", "Tab 2", "Tab 3"];
  var pages = [const Tab1(), const Tab2(), const Tab3()];
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        key: _navigatorKey,
        context,
        controller: Helper.controller,
        handleAndroidBackButtonPress: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        screens: pages,
        resizeToAvoidBottomInset: true,
        navBarStyle: NavBarStyle.style1,
        items: List.generate(
          tabs.length,
          (index) => PersistentBottomNavBarItem(
              icon: const Icon(Icons.touch_app),
              title: tabs[index],
              activeColorPrimary: CupertinoColors.black,
              inactiveColorPrimary: CupertinoColors.systemGrey),
        ),
      ),
    );
  }
}
