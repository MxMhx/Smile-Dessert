import 'package:flutter/material.dart';
import "thankyou.dart";
import 'cart/cart.dart';
import 'home.dart';
import 'STEP-2/step-2_ice_cone.dart';

void main() {
  runApp(smiledessert());
}

// สร้าง widget
class smiledessert extends StatelessWidget {
  const smiledessert({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Icecream_home(),
    );
  }
}
//flutter build apk
