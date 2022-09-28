import 'package:get/get.dart';

enum HorseCleanFeeding { clean, unClean ,noAnswer }

class HorseCleanFeedingController extends GetxController {
  HorseCleanFeeding charcter = HorseCleanFeeding.noAnswer;

  void onChange(HorseCleanFeeding value) {
    charcter = value;
    update();
  }
}
