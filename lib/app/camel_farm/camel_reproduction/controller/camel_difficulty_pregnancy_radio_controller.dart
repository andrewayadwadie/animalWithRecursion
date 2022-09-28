import 'package:get/get.dart';

enum CamelDifficultyPregnancyRadio { yes, no,noAnswer }

class CamelDifficultyPregnancyRadioController extends GetxController {
  CamelDifficultyPregnancyRadio charcter = CamelDifficultyPregnancyRadio.noAnswer;

  void onChange(CamelDifficultyPregnancyRadio value) {
    charcter = value;
    update();
  }
}
