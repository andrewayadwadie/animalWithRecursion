import 'package:get/get.dart';

enum SheepDifficultyPregnancyRadio { yes, no,noAnswer }

class SheepDifficultyPregnancyRadioController extends GetxController {
  SheepDifficultyPregnancyRadio charcter = SheepDifficultyPregnancyRadio.noAnswer;

  void onChange(SheepDifficultyPregnancyRadio value) {
    charcter = value;
    update();
  }
}
