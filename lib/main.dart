import 'package:flutter/material.dart';
import 'package:ui_design/view/account.dart';
import 'package:ui_design/view/otp.dart';
import 'package:ui_design/view/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),

    );
  }
}
