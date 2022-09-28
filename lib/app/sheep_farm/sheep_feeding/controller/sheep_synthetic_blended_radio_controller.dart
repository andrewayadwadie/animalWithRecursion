import 'package:get/get.dart';

enum SheepSyntheticBlendedRadio { synthetic,blended ,noAnswer}

class SheepSyntheticBlendedRadioController extends GetxController {
  SheepSyntheticBlendedRadio charcter = SheepSyntheticBlendedRadio.noAnswer;

  void onChange(SheepSyntheticBlendedRadio value) {
    charcter = value;
    update();
  }
}
