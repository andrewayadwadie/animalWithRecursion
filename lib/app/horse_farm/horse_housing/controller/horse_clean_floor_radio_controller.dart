

import 'package:get/get.dart';

enum HorseCleanFloor { clean , unClean,noAnswer }

class HorseCleanFloorController extends GetxController {
  HorseCleanFloor charcter = HorseCleanFloor.noAnswer;

  void onChange(HorseCleanFloor value) {
    charcter = value;
    update();
  }
}
