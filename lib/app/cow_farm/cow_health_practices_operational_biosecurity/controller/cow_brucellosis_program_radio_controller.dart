import 'package:get/get.dart';

enum CowBrucellosisProgramRadio { yes, no,noAnswer }

class CowBrucellosisProgramRadioController extends GetxController {
  CowBrucellosisProgramRadio charcter = CowBrucellosisProgramRadio.noAnswer;

  void onChange(CowBrucellosisProgramRadio value) {
    charcter = value;
    update();
  }
}
