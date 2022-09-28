

import 'package:get/get.dart';

enum CamelCleanFloor { clean , unClean,noAnswer }

class CamelCleanFloorController extends GetxController {
  CamelCleanFloor charcter = CamelCleanFloor.noAnswer;

  void onChange(CamelCleanFloor value) {
    charcter = value;
    update();
  }
}
