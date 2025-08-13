import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';
import 'package:latian1_11pplg2/controllers/FootballControler.dart';
import 'package:latian1_11pplg2/controllers/editPlayerControler.dart';

class EditPlayerPage extends StatelessWidget {
  final int index;
  EditPlayerPage({required this.index});

final FootballController footballController = Get.find();

final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final player = footballController.players[index];

    nameController.text = player.name;
    positionController.text = player.position;
    numberController.text = player.number.toString();

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: positionController,
              decoration: InputDecoration(labelText: "Position"),
            ),
            TextField(
              controller: numberController,
              decoration: InputDecoration(labelText: "Number"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                footballController.updatePlayer(
                  index,
                  nameController.text,
                  positionController.text,
                  int.tryParse(numberController.text) ?? player.number,
                );
                Get.back(); 
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}