import 'package:get/get.dart';

enum GoatSemenSourceRadio { local, importation ,noAnswer}

class GoatSemenSourceRadioController extends GetxController {
  GoatSemenSourceRadio charcter = GoatSemenSourceRadio.noAnswer;

  void onChange(GoatSemenSourceRadio value) {
    charcter = value;
    update();
  }
}
