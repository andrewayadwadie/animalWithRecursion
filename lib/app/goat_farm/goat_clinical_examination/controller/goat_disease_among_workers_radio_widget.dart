import 'package:get/get.dart';

enum GoatDiseaseAmongWorkersRadio { yes, no,noAnswer }

class GoatDiseaseAmongWorkersRadioController extends GetxController {
  GoatDiseaseAmongWorkersRadio charcter = GoatDiseaseAmongWorkersRadio.noAnswer;

  void onChange(GoatDiseaseAmongWorkersRadio value) {
    charcter = value;
    update();
  }
}
