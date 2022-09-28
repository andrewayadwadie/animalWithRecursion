

import 'package:get/get.dart';

enum GoatCleanFloor { clean , unClean,noAnswer }

class GoatCleanFloorController extends GetxController {
  GoatCleanFloor charcter = GoatCleanFloor.noAnswer;

  void onChange(GoatCleanFloor value) {
    charcter = value;
    update();
  }
}
