import 'package:get/get.dart';

enum SheepAnimalsShowSymptomsRadio { yes, no ,noAnswer}

class SheepAnimalsShowSymptomsRadioController extends GetxController {
  SheepAnimalsShowSymptomsRadio charcter = SheepAnimalsShowSymptomsRadio.noAnswer;

  void onChange(SheepAnimalsShowSymptomsRadio value) {
    charcter = value;
    update();
  }
}
