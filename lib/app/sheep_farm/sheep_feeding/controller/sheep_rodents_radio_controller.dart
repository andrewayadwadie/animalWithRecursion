

import 'package:get/get.dart';

enum SheeprodentsRadio { yes , no ,noAnswer}

class SheeprodentsRadioController extends GetxController {
  SheeprodentsRadio charcter = SheeprodentsRadio.noAnswer;

  void onChange(SheeprodentsRadio value) {
    charcter = value;
    update();
  }
}
 