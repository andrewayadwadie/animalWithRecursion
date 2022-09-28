

import 'package:get/get.dart';

enum SheepCleanFloor { clean , unClean,noAnswer }

class SheepCleanFloorController extends GetxController {
  SheepCleanFloor charcter = SheepCleanFloor.noAnswer;

  void onChange(SheepCleanFloor value) {
    charcter = value;
    update();
  }
}
