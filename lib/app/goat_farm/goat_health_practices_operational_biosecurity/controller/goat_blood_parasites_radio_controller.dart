import 'package:get/get.dart';

enum GoatbloodParasitesRadio { yes, no,noAnswer }

class GoatbloodParasitesRadioController extends GetxController {
  GoatbloodParasitesRadio charcter = GoatbloodParasitesRadio.noAnswer;

  void onChange(GoatbloodParasitesRadio value) {
    charcter = value;
    update();
  }
}
