import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latian1_11pplg2/login_page.dart';
import 'package:latian1_11pplg2/pages/calculator_pages.dart';
import 'package:latian1_11pplg2/routes/pages.dart';
import 'package:latian1_11pplg2/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.calculatorpage,
      getPages: AppPages.pages,
    );
  }
}

