import 'package:flutter/material.dart';
import 'package:hogr/common/custombutton.dart';
import 'package:hogr/utils/helper.dart';
import 'package:hogr/views/pagefive.dart';
import 'package:hogr/views/pagesix.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("PAGE 2")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomMaterialButton(
              onPressed: () => PersistentNavBarNavigator.pushNewScreen(
                context,
                withNavBar: false,
                screen: const PageFive(),
              ),
              // Helper.pushNamed(AppRoutes.pagethree),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Page 5"),
                  Helper.allowWidth(5),
                  const Icon(Icons.arrow_right_outlined)
                ],
              ),
            ),
            Helper.allowHeight(5),
            CustomMaterialButton(
              onPressed: () => PersistentNavBarNavigator.pushNewScreen(
                context,
                withNavBar: true,
                screen: const PageSix(),
              ),
              // Helper.pushNamed(AppRoutes.pagethree),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Page 6"),
                  Helper.allowWidth(5),
                  const Icon(Icons.arrow_right_outlined)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
