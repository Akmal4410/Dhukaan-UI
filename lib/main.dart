import 'package:dukaan/screens/screeen_payment.dart';
import 'package:dukaan/screens/screen_info.dart';
import 'package:dukaan/screens/screen_manage_order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ScreenManageOrder(),
      // home: ScreenInfo(),
      home: ScreenPayment(),
    );
  }
}
