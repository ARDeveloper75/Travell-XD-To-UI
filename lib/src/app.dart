import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travell_ui/src/pages/homePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
