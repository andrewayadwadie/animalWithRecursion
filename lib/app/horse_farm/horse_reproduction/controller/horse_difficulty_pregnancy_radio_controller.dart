import 'package:get/get.dart';

enum HorseDifficultyPregnancyRadio { yes, no,noAnswer }

class HorseDifficultyPregnancyRadioController extends GetxController {
  HorseDifficultyPregnancyRadio charcter = HorseDifficultyPregnancyRadio.noAnswer;

  void onChange(HorseDifficultyPregnancyRadio value) {
    charcter = value;
    update();
  }
}
