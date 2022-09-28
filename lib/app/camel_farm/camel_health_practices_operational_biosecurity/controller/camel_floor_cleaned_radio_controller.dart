import 'package:get/get.dart';

enum CamelFloorCleanedRadio { yes, no,noAnswer }

class CamelFloorCleanedRadioController extends GetxController {
  CamelFloorCleanedRadio charcter = CamelFloorCleanedRadio.noAnswer;

  void onChange(CamelFloorCleanedRadio value) {
    charcter = value;
    update();
  }
}
