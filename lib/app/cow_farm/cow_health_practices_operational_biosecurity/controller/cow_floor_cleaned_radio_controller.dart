import 'package:get/get.dart';

enum CowFloorCleanedRadio { yes, no,noAnswer }

class CowFloorCleanedRadioController extends GetxController {
  CowFloorCleanedRadio charcter = CowFloorCleanedRadio.noAnswer;

  void onChange(CowFloorCleanedRadio value) {
    charcter = value;
    update();
  }
}
