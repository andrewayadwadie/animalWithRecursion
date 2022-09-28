import 'package:get/get.dart';

enum CowCleanWatering { clean, unClean ,noAnswer }

class CowCleanWateringController extends GetxController {
  CowCleanWatering charcter = CowCleanWatering.noAnswer;

  void onChange(CowCleanWatering value) {
    charcter = value;
    update();
  }
}
