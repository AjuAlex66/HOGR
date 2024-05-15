import 'package:flutter/material.dart';
import 'package:hogr/common/custombutton.dart';
import 'package:hogr/utils/helper.dart';

class PageSix extends StatefulWidget {
  const PageSix({super.key});

  @override
  State<PageSix> createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("PAGE 6")),
      body: Center(
        child: CustomMaterialButton(
          onPressed: () => Helper.controller!.jumpToTab(1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Tab 2"),
              Helper.allowWidth(5),
              const Icon(Icons.arrow_right_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
