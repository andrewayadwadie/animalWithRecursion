import 'package:get/get.dart';

enum HorseobstructedLaborRadio { yes, no,noAnswer }

class HorseobstructedLaborRadioController extends GetxController {
  HorseobstructedLaborRadio charcter = HorseobstructedLaborRadio.noAnswer;

  void onChange(HorseobstructedLaborRadio value) {
    charcter = value;
    update();
  }
}
