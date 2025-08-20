import 'package:get/get.dart';

class BottonNavController extends GetxController {
  var SelectedIndex = 0.obs;

  void changeTab(int index) {
    SelectedIndex.value = index;
  }
}