import 'package:get/get.dart';

enum HorseCleanVisitorRadio { yes, no,noAnswer }

class HorseCleanVisitorRadioController extends GetxController {
  HorseCleanVisitorRadio charcter = HorseCleanVisitorRadio.noAnswer;

  void onChange(HorseCleanVisitorRadio value) {
    charcter = value;
    update();
  }
}
