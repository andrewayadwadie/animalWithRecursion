import 'package:get/get.dart';

enum CowAnimalsShowSymptomsRadio { yes, no ,noAnswer}

class CowAnimalsShowSymptomsRadioController extends GetxController {
  CowAnimalsShowSymptomsRadio charcter = CowAnimalsShowSymptomsRadio.noAnswer;

  void onChange(CowAnimalsShowSymptomsRadio value) {
    charcter = value;
    update();
  }
}
