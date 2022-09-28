import 'package:get/get.dart';

enum SheepWaterSourceRadio { treated, untreated ,noAnswer}

class SheepWaterSourceRadioController extends GetxController {
  SheepWaterSourceRadio charcter = SheepWaterSourceRadio.noAnswer;

  void onChange(SheepWaterSourceRadio value) {
    charcter = value;
    update();
  }
}
