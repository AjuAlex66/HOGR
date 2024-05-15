import 'package:flutter/material.dart';
import 'package:hogr/common/custombutton.dart';
import 'package:hogr/utils/helper.dart';
import 'package:hogr/views/pagefive.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("PAGE 2")),
      body: Center(
        child: CustomMaterialButton(
          onPressed: () => PersistentNavBarNavigator.pushNewScreen(
            context,
            withNavBar: false,
            screen: const PageFive(),
          ),
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
      ),
    );
  }
}
