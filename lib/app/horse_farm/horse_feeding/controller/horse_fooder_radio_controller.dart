

import 'package:get/get.dart';

enum HorseFooderRadio { yes , no,noAnswer }

class HorseFooderRadioController extends GetxController {
  HorseFooderRadio charcter = HorseFooderRadio.noAnswer;

  void onChange(HorseFooderRadio value) {
    charcter = value;
    update();
  }
}
