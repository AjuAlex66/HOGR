import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/getx/controller.dart';
import 'package:hogr/routes/approutes.dart';
import 'package:hogr/utils/helper.dart';
import 'package:hogr/views/bottomnavigation/tabone.dart';
import 'package:hogr/views/pagetwo.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final GetController _myController = Get.put(GetController());
  // PersistentTabController? _controller;
  // final RxInt currentIndex = 0.obs;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        key: _navigatorKey,
        context,
        controller: Helper.controller,
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        stateManagement: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        screens: _myController.pages,
        hideNavigationBar: false,
        resizeToAvoidBottomInset: true,
        items: [
          PersistentBottomNavBarItem(
            icon: Helper.shrink(),
            title: "Tab 1",
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple,
            routeAndNavigatorSettings: RouteAndNavigatorSettings(
                initialRoute: '/', routes: AppRoutes.routes),
          ),
          PersistentBottomNavBarItem(
              icon: Helper.shrink(),
              title: "Tab 2",
              activeColorPrimary: Colors.black,
              inactiveColorPrimary: Colors.grey,
              inactiveColorSecondary: Colors.purple),
          PersistentBottomNavBarItem(
              icon: Helper.shrink(),
              title: "Tab 3",
              activeColorPrimary: Colors.black,
              inactiveColorPrimary: Colors.grey,
              inactiveColorSecondary: Colors.purple),
        ],
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
