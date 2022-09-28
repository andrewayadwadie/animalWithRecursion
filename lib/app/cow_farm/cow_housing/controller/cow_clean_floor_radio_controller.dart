

import 'package:get/get.dart';

enum CowCleanFloor { clean , unClean,noAnswer }

class CowCleanFloorController extends GetxController {
  CowCleanFloor charcter = CowCleanFloor.noAnswer;

  void onChange(CowCleanFloor value) {
    charcter = value;
    update();
  }
}
