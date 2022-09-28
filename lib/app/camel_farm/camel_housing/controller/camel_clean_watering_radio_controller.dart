import 'package:get/get.dart';

enum CamelCleanWatering { clean, unClean ,noAnswer }

class CamelCleanWateringController extends GetxController {
  CamelCleanWatering charcter = CamelCleanWatering.noAnswer;

  void onChange(CamelCleanWatering value) {
    charcter = value;
    update();
  }
}
