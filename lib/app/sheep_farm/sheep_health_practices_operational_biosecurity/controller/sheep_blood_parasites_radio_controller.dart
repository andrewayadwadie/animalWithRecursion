import 'package:get/get.dart';

enum SheepbloodParasitesRadio { yes, no,noAnswer }

class SheepbloodParasitesRadioController extends GetxController {
  SheepbloodParasitesRadio charcter = SheepbloodParasitesRadio.noAnswer;

  void onChange(SheepbloodParasitesRadio value) {
    charcter = value;
    update();
  }
}
