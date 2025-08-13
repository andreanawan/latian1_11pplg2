import 'package:get/get.dart';
import '../models/player_model.dart';

class FootballController extends GetxController {
  var players = <Player>[].obs;

  @override
  void onInit() {
    players.addAll([
      Player(name: "Aldesta", position: "Forward", number: 9, imageAssets: "assets/aldesta.jpg"),
      Player(name: "yoga", position: "Midfielder", number: 8, imageAssets: "assets/yoga.jpg"),
      Player(name: "Antonius", position: "Defender", number: 5, imageAssets: "assets/antonius.jpg"),
      Player(name: "arjaa", position: "Defender", number: 9, imageAssets: "assets/arjaa.jpg"),
      Player(name: "rengga", position: "Defender", number: 2, imageAssets: "assets/rengga.jpg"),
    ]);
    super.onInit();
  }

  void updatePlayer(int index, String name, String position, int number) {
    players[index].name = name;
    players[index].position = position;
    players[index].number = number;
    players.refresh(); // supaya UI terupdate
  }
}


