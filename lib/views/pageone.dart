import 'package:flutter/material.dart';
import 'package:hogr/common/custombutton.dart';
import 'package:hogr/utils/helper.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Page 1")),
      body: Center(
        child: CustomMaterialButton(
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Page 2"),
              Helper.allowWidth(5),
              const Icon(Icons.arrow_right_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
