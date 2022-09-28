import 'package:get/get.dart';

enum HorseBrucellosisProgramRadio { yes, no,noAnswer }

class HorseBrucellosisProgramRadioController extends GetxController {
  HorseBrucellosisProgramRadio charcter = HorseBrucellosisProgramRadio.noAnswer;

  void onChange(HorseBrucellosisProgramRadio value) {
    charcter = value;
    update();
  }
}
