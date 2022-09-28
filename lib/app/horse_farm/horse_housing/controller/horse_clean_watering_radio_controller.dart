import 'package:get/get.dart';

enum HorseCleanWatering { clean, unClean ,noAnswer }

class HorseCleanWateringController extends GetxController {
  HorseCleanWatering charcter = HorseCleanWatering.noAnswer;

  void onChange(HorseCleanWatering value) {
    charcter = value;
    update();
  }
}
