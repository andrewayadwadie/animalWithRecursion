import 'package:get/get.dart';

enum SheepFloorCleanedRadio { yes, no,noAnswer }

class SheepFloorCleanedRadioController extends GetxController {
  SheepFloorCleanedRadio charcter = SheepFloorCleanedRadio.noAnswer;

  void onChange(SheepFloorCleanedRadio value) {
    charcter = value;
    update();
  }
}
