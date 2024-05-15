import 'package:flutter/material.dart';
import 'package:hogr/common/custombutton.dart';
import 'package:hogr/utils/helper.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomMaterialButton(
              onPressed: () => {},
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
              onPressed: () => {},
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
