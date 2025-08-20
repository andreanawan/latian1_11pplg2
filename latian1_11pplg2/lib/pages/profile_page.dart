import 'package:flutter/material.dart';
import 'package:latian1_11pplg2/component/custom_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/yoga.jpg"), 
            ),
            const SizedBox(height: 20),

            Text(
              "Andrean Awan",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Text(
              "Kelas: XI PPLG 2",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),

            Text(
              "Alamat: Surakarta, Jawa Tengah",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
