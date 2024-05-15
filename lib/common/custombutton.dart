import 'package:flutter/material.dart';
import 'package:hogr/utils/helper.dart';

class CustomMaterialButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;
  const CustomMaterialButton({super.key, required this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: Helper.width / 3,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.black)),
        color: Colors.white,
        child: child ?? Helper.shrink());
  }
}
