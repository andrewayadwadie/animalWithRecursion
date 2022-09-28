import 'package:get/get.dart';

enum GoatSlaughterRadio { yes, no ,noAnswer}

class GoatSlaughterRadioController extends GetxController {
  GoatSlaughterRadio charcter = GoatSlaughterRadio.noAnswer;

  void onChange(GoatSlaughterRadio value) {
    charcter = value;
    update();
  }
}


