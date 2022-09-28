import 'package:get/get.dart';

enum GoatBrucellosisProgramRadio { yes, no,noAnswer }

class GoatBrucellosisProgramRadioController extends GetxController {
  GoatBrucellosisProgramRadio charcter = GoatBrucellosisProgramRadio.noAnswer;

  void onChange(GoatBrucellosisProgramRadio value) {
    charcter = value;
    update();
  }
}
