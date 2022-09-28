import 'package:get/get.dart';

enum HorseIsolatePlaceRadio { yes, no ,noAnswer}

class HorseIsolatePlaceRadioController extends GetxController {
  HorseIsolatePlaceRadio charcter = HorseIsolatePlaceRadio.noAnswer;

  void onChange(HorseIsolatePlaceRadio value) {
    charcter = value;
    update();
  }
}
