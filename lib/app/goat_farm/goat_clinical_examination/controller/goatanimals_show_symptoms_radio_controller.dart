import 'package:get/get.dart';

enum GoatAnimalsShowSymptomsRadio { yes, no ,noAnswer}

class GoatAnimalsShowSymptomsRadioController extends GetxController {
  GoatAnimalsShowSymptomsRadio charcter = GoatAnimalsShowSymptomsRadio.noAnswer;

  void onChange(GoatAnimalsShowSymptomsRadio value) {
    charcter = value;
    update();
  }
}
