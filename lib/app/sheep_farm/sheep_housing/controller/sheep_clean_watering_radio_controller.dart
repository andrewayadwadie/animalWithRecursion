
import 'package:get/get.dart';

enum SheepCleanWatering { clean, unClean ,noAnswer }

class SheepCleanWateringController extends GetxController {
  SheepCleanWatering charcter = SheepCleanWatering.noAnswer;

  void onChange(SheepCleanWatering value) {
    charcter = value;
    update();
  }
}
