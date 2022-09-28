import 'package:get/get.dart';

enum SheepBrucellosisProgramRadio { yes, no,noAnswer }

class SheepBrucellosisProgramRadioController extends GetxController {
  SheepBrucellosisProgramRadio charcter = SheepBrucellosisProgramRadio.noAnswer;

  void onChange(SheepBrucellosisProgramRadio value) {
    charcter = value;
    update();
  }
}
