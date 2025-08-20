// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:latian1_11pplg2/login_page.dart';
// import 'package:latian1_11pplg2/pages/calculator_pages.dart';
// import 'package:latian1_11pplg2/routes/pages.dart';
// import 'package:latian1_11pplg2/routes/routes.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: AppRoutes.calculatorpage,
//       getPages: AppPages.pages,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/bottom_nav_controller.dart';
import 'pages/calculator_pages.dart';
import 'pages/FootballPLayer.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(GetMaterialApp(
    home: MyApp(),
    getPages: [
      GetPage(name: "/editplayer", page: () => Scaffold(body: Center(child: Text("Edit Player Page")))),
    ],
  ));
}

class MyApp extends StatelessWidget {
  final navController = Get.put(BottonNavController());

  final pages = [
    CalculatorPages(),
    Footballplayer(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: pages[navController.SelectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navController.SelectedIndex.value,
        onTap: navController.changeTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: "Football"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    ));
  }
}
