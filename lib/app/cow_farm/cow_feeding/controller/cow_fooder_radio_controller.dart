

import 'package:get/get.dart';

enum CowFooderRadio { yes , no,noAnswer }

class CowFooderRadioController extends GetxController {
  CowFooderRadio charcter = CowFooderRadio.noAnswer;

  void onChange(CowFooderRadio value) {
    charcter = value;
    update();
  }
}
