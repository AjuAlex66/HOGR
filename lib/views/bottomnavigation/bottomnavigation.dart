import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogr/utils/helper.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // PersistentTabController? _controller;
  // final RxInt currentIndex = 0.obs;
  List<String> tabs = ["Tab 1", "Tab 2", "Tab 3"];
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(centerTitle: true, title: const Text("PAGE 2")),
      body: PersistentTabView(
        key: _navigatorKey,
        context,
        controller: Helper.controller,
        handleAndroidBackButtonPress: true,
        popActionScreens: PopActionScreensType.all,
        screens: Helper.getXController.pages,
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
    // return DefaultTabController(
    //   length: _myController.pages.length,
    //   child: Scaffold(
    //     appBar: AppBar(centerTitle: true, title: const Text("PAGE 2")),
    //     body:
    //         // Obx(() => IndexedStack(
    //         //       index: _myController.currentIndex.value,
    //         //       children: _myController.pages,
    //         //     )),
    //         //  Navigator(
    //         //     key: _navigatorKey,
    //         //     onGenerateRoute: (settings) {
    //         //       Widget page = const Tab1();
    //         //       if (settings.name == AppRoutes.pagethree) {
    //         //         page = const PageThree();
    //         //       }
    //         //       return MaterialPageRoute(builder: (context) => page);
    //         //     }),
    //         Obx(() => _myController.pages[_myController.currentIndex.value]),
    //     bottomNavigationBar: Obx(
    //       () => BottomAppBar(
    //         clipBehavior: Clip.antiAlias,
    //         child: BottomNavigationBar(
    //           backgroundColor: Colors.white,
    //           type: BottomNavigationBarType.fixed,
    //           selectedItemColor: Colors.black,
    //           selectedLabelStyle: const TextStyle(color: Colors.white),
    //           // backgroundColor: Colors.black,
    //           currentIndex: _myController.currentIndex.value,
    //           onTap: _myController.changePage,
    //           items: [
    //             BottomNavigationBarItem(
    //               icon: Helper.shrink(),
    //               label: 'Tab 1',
    //             ),
    //             BottomNavigationBarItem(
    //               icon: Helper.shrink(),
    //               label: 'Tab 2',
    //             ),
    //             BottomNavigationBarItem(
    //               icon: Helper.shrink(),
    //               label: 'Tab 3',
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
