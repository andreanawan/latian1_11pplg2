import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latian1_11pplg2/controllers/FootballControler.dart';
import 'package:latian1_11pplg2/pages/editPlayer.dart';

class Footballplayer extends StatelessWidget {
  Footballplayer({super.key});

  final FootballController footballcontroler = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("pplg all bess")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballcontroler.players.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage(footballcontroler.players[index].imageAssets),
                  radius: 25,
                ),
                title: Text(footballcontroler.players[index].name),
                onTap: () {
                  Get.toNamed("/editplayerpage", arguments: index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
