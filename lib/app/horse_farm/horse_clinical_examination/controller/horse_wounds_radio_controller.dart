import 'package:get/get.dart';

enum HorseWoundsRadioController { yes, no,noAnswer }

class HorseWoundsRadioControllerController extends GetxController {
  HorseWoundsRadioController charcter = HorseWoundsRadioController.noAnswer;

  void onChange(HorseWoundsRadioController value) {
    charcter = value;
    update();
  }
}
