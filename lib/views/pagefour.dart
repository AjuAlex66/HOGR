import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/utils/helper.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  void initState() {
    super.initState();
    Helper.getXController.fetchSampleData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("PAGE 4")),
      body: Obx(() => Helper.getXController.isLoading.value
          ? const Center(
              child: CupertinoActivityIndicator(),
            )
          : Helper.getXController.isError.value
              ? const Center(
                  child: Text('Failed to fetch data. Please try again later.'))
              : Helper.getXController.sampleData!.isEmpty
                  ? const Center(child: Text('No data available.'))
                  : ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(14.0),
                      itemCount: Helper.getXController.sampleData!.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Text(Helper.getXController.sampleData![index].title!),
                      separatorBuilder: (context, index) => const Divider(),
                    )),
    );
  }
}
