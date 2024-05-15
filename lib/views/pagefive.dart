import 'package:flutter/material.dart';
import 'package:hogr/utils/helper.dart';

class PageFive extends StatefulWidget {
  const PageFive({super.key});

  @override
  State<PageFive> createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Helper.pop(context),
          ),
          centerTitle: true,
          title: const Text("PAGE 5")),
    );
  }
}
