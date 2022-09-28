

import 'package:get/get.dart';

enum SheepStorageAppropriateRadio { yes , no,noAnswer }

class SheepStorageAppropriateRadioController extends GetxController {
  SheepStorageAppropriateRadio charcter = SheepStorageAppropriateRadio.noAnswer;

  void onChange(SheepStorageAppropriateRadio value) {
    charcter = value;
    update();
  }
}
 