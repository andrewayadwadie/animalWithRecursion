import 'package:get/get.dart';

enum HorseUdderWashedRadio { after, before,noAnswer }

class HorseUdderWashedRadioController extends GetxController {
  HorseUdderWashedRadio charcter = HorseUdderWashedRadio.noAnswer;

  void onChange(HorseUdderWashedRadio value) {
    charcter = value;
    update();
  }
}
