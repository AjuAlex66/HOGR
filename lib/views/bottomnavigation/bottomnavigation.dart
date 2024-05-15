import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/getx/controller.dart';
import 'package:hogr/utils/helper.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final GetController _myController = Get.put(GetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("PAGE 2")),
      body: Obx(() => _myController.pages[_myController.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(color: Colors.white),
          // backgroundColor: Colors.black,
          currentIndex: _myController.currentIndex.value,
          onTap: _myController.changePage,
          items: [
            BottomNavigationBarItem(
              icon: Helper.shrink(),
              label: 'Tab 1',
            ),
            BottomNavigationBarItem(
              icon: Helper.shrink(),
              label: 'Tab 2',
            ),
            BottomNavigationBarItem(
              icon: Helper.shrink(),
              label: 'Tab 3',
            ),
          ],
        ),
      ),
    );
  }
}
