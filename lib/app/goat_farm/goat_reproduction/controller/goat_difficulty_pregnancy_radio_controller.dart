import 'package:get/get.dart';

enum GoatDifficultyPregnancyRadio { yes, no,noAnswer }

class GoatDifficultyPregnancyRadioController extends GetxController {
  GoatDifficultyPregnancyRadio charcter = GoatDifficultyPregnancyRadio.noAnswer;

  void onChange(GoatDifficultyPregnancyRadio value) {
    charcter = value;
    update();
  }
}
