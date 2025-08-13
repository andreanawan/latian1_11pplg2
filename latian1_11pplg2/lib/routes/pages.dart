import 'package:latian1_11pplg2/pages/FootballPLayer.dart';
import 'package:latian1_11pplg2/pages/calculator_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latian1_11pplg2/pages/editPlayer.dart';
import 'package:latian1_11pplg2/routes/routes.dart';


class AppPages {
  static final pages =[
    GetPage(name: AppRoutes.calculatorpage, page: () => CalculatorPages()),
    GetPage(name: AppRoutes.football, page: () => Footballplayer()),
    GetPage(
  name: AppRoutes.editPlayer,
  page: () {
    final index = Get.arguments as int; // ambil argumen dari navigasi
    return EditPlayerPage(index: index);
  }
),
  ];
}