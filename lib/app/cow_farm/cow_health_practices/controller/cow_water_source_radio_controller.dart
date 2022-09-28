import 'package:get/get.dart';

enum CowWaterSourceRadio { treated, untreated ,noAnswer}

class CowWaterSourceRadioController extends GetxController {
  CowWaterSourceRadio charcter = CowWaterSourceRadio.noAnswer;

  void onChange(CowWaterSourceRadio value) {
    charcter = value;
    update();
  }
}
