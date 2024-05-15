import 'package:flutter/material.dart';
import 'package:hogr/utils/helper.dart';
import 'package:hogr/views/pageone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Helper.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'HOGR Foods',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            color: Colors.black,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Sedan',
              fontSize: 26,
            )),
        fontFamily: 'Sedan',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const PageOne(),
    );
  }
}
