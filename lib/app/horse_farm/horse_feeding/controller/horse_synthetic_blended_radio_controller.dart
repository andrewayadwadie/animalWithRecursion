import 'package:get/get.dart';

enum HorseSyntheticBlendedRadio { synthetic,blended ,noAnswer}

class HorseSyntheticBlendedRadioController extends GetxController {
  HorseSyntheticBlendedRadio charcter = HorseSyntheticBlendedRadio.noAnswer;

  void onChange(HorseSyntheticBlendedRadio value) {
    charcter = value;
    update();
  }
}
