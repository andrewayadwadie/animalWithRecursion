

import 'package:get/get.dart';

enum SheepFooderRadio { yes , no,noAnswer }

class SheepFooderRadioController extends GetxController {
  SheepFooderRadio charcter = SheepFooderRadio.noAnswer;

  void onChange(SheepFooderRadio value) {
    charcter = value;
    update();
  }
}
