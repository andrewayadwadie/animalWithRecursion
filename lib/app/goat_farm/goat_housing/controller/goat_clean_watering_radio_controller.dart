import 'package:get/get.dart';

enum GoatCleanWatering { clean, unClean ,noAnswer }

class GoatCleanWateringController extends GetxController {
  GoatCleanWatering charcter = GoatCleanWatering.noAnswer;

  void onChange(GoatCleanWatering value) {
    charcter = value;
    update();
  }
}
