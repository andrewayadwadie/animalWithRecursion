import 'package:get/get.dart';

enum GoatDiseaseOutbreakRadio { yes, no,noAnswer }

class GoatDiseaseOutbreakRadioController extends GetxController {
  GoatDiseaseOutbreakRadio charcter = GoatDiseaseOutbreakRadio.noAnswer;

  void onChange(GoatDiseaseOutbreakRadio value) {
    charcter = value;
    update();
  }
}
