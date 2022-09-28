import 'package:get/get.dart';

enum GoatWaterSourceRadio { treated, untreated ,noAnswer}

class GoatWaterSourceRadioController extends GetxController {
  GoatWaterSourceRadio charcter = GoatWaterSourceRadio.noAnswer;

  void onChange(GoatWaterSourceRadio value) {
    charcter = value;
    update();
  }
}
