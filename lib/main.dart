import 'package:dukaan/screens/screen_catalogue.dart';
import 'package:dukaan/screens/screen_dukaan.dart';
import 'package:dukaan/screens/screen_manage_order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ScreenManageOrder(),
      //home: ScreenDukaan(),
      home: ScreenCatalogue(),
    );
  }
}
