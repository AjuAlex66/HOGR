import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/common/custombutton.dart';
import 'package:hogr/getx/controller.dart';
import 'package:hogr/routes/approutes.dart';
import 'package:hogr/utils/helper.dart';
import 'package:hogr/views/bottomnavigation/bottomnavigation.dart';
import 'package:hogr/views/pagetwo.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    // final GetController myController = Get.find<GetController>();
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
                withNavBar: true,
                screen: const PageThree(),
              ),
              // Helper.pushNamed(AppRoutes.pagethree),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Page 3"),
                  Helper.allowWidth(5),
                  const Icon(Icons.arrow_right_outlined)
                ],
              ),
            ),
            Helper.allowHeight(5),
            CustomMaterialButton(
              onPressed: () => showDialog(
                context: context,
                builder: (dialogContext) => AlertDialog(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shadowColor: Colors.black,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Helper.pop(dialogContext),
                        child: const Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  content: const Text(
                    "Popup 1",
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    CustomMaterialButton(
                      onPressed: () {
                        Helper.pop(dialogContext);
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          withNavBar: true,
                          screen: const PageThree(),
                        );
                      },
                      child: const Text("Page 3"),
                    ),
                    CustomMaterialButton(
                      onPressed: () {
                        Helper.pop(dialogContext);
                        Helper.controller!.jumpToTab(1);
                      },
                      child: const Text("Tab 2"),
                    ),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Popup 1"),
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
