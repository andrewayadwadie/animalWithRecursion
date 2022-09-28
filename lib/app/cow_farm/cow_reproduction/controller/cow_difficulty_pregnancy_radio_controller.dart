import 'package:get/get.dart';

enum CowDifficultyPregnancyRadio { yes, no,noAnswer }

class CowDifficultyPregnancyRadioController extends GetxController {
  CowDifficultyPregnancyRadio charcter = CowDifficultyPregnancyRadio.noAnswer;

  void onChange(CowDifficultyPregnancyRadio value) {
    charcter = value;
    update();
  }
}
