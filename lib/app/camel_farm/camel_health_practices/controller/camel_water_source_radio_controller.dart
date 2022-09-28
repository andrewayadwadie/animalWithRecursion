import 'package:get/get.dart';

enum CamelWaterSourceRadio { treated, untreated ,noAnswer}

class CamelWaterSourceRadioController extends GetxController {
  CamelWaterSourceRadio charcter = CamelWaterSourceRadio.noAnswer;

  void onChange(CamelWaterSourceRadio value) {
    charcter = value;
    update();
  }
}
