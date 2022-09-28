import 'package:get/get.dart';

enum HorsebloodParasitesRadio { yes, no,noAnswer }

class HorsebloodParasitesRadioController extends GetxController {
  HorsebloodParasitesRadio charcter = HorsebloodParasitesRadio.noAnswer;

  void onChange(HorsebloodParasitesRadio value) {
    charcter = value;
    update();
  }
}
