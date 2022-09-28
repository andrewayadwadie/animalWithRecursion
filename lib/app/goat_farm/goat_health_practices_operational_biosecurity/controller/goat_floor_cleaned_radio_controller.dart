import 'package:get/get.dart';

enum GoatFloorCleanedRadio { yes, no,noAnswer }

class GoatFloorCleanedRadioController extends GetxController {
  GoatFloorCleanedRadio charcter = GoatFloorCleanedRadio.noAnswer;

  void onChange(GoatFloorCleanedRadio value) {
    charcter = value;
    update();
  }
}
