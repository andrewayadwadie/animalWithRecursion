

import 'package:get/get.dart';

enum CamelFooderRadio { yes , no,noAnswer }

class CamelFooderRadioController extends GetxController {
  CamelFooderRadio charcter = CamelFooderRadio.noAnswer;

  void onChange(CamelFooderRadio value) {
    charcter = value;
    update();
  }
}
