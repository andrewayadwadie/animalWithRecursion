import 'package:get/get.dart';

enum CamelbloodParasitesRadio { yes, no,noAnswer }

class CamelbloodParasitesRadioController extends GetxController {
  CamelbloodParasitesRadio charcter = CamelbloodParasitesRadio.noAnswer;

  void onChange(CamelbloodParasitesRadio value) {
    charcter = value;
    update();
  }
}
