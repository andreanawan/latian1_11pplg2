import 'package:get/get.dart';

class Player {
  String name;
  String position;
  int number;
  String image;

  Player({
    required this.name,
    required this.position,
    required this.number,
    required this.image,
  });
}


class Editplayercontroler extends GetxController {
  var player = <Player>[].obs;

  @override
  void onInit() {
    player.addAll([
      Player(name: "Arya", position: "Forward", number: 9, image: "assets/arya.png"),
      Player(name: "Renga", position: "Midfielder", number: 8, image: "assets/renga.png"),
      
    ]);
    super.onInit();
  }

  void updatePlayer(int index, String name, String position, int number) {
    player[index].name = name;
    player[index].position = position;
    player[index].number = number;
    player.refresh();
  }
}

  
