import 'package:get/get.dart';

enum CamelAnimalsShowSymptomsRadio { yes, no ,noAnswer}

class CamelAnimalsShowSymptomsRadioController extends GetxController {
  CamelAnimalsShowSymptomsRadio charcter = CamelAnimalsShowSymptomsRadio.noAnswer;

  void onChange(CamelAnimalsShowSymptomsRadio value) {
    charcter = value;
    update();
  }
}
