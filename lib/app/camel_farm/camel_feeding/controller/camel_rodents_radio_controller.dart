

import 'package:get/get.dart';

enum CamelrodentsRadio { yes , no ,noAnswer}

class CamelrodentsRadioController extends GetxController {
  CamelrodentsRadio charcter = CamelrodentsRadio.noAnswer;

  void onChange(CamelrodentsRadio value) {
    charcter = value;
    update();
  }
}
 