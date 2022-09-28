import 'package:get/get.dart';

enum CowbloodParasitesRadio { yes, no,noAnswer }

class CowbloodParasitesRadioController extends GetxController {
  CowbloodParasitesRadio charcter = CowbloodParasitesRadio.noAnswer;

  void onChange(CowbloodParasitesRadio value) {
    charcter = value;
    update();
  }
}
