import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/getx/controller.dart';
import 'package:hogr/routes/approutes.dart';
import 'package:hogr/utils/helper.dart';
import 'package:hogr/views/pageone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Helper.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'HOGR Foods',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      initialBinding: BindingsBuilder(() {
        Get.put(GetController());
      }),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            color: Colors.black,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 26,
            )),
        fontFamily: 'Poppins',
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: false,
      ),
      home: const PageOne(),
    );
  }
}
