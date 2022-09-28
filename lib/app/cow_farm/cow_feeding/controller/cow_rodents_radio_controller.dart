

import 'package:get/get.dart';

enum CowrodentsRadio { yes , no ,noAnswer}

class CowrodentsRadioController extends GetxController {
  CowrodentsRadio charcter = CowrodentsRadio.noAnswer;

  void onChange(CowrodentsRadio value) {
    charcter = value;
    update();
  }
}
 