import 'package:get/get.dart';

enum CowSyntheticBlendedRadio { synthetic,blended ,noAnswer}

class CowSyntheticBlendedRadioController extends GetxController {
  CowSyntheticBlendedRadio charcter = CowSyntheticBlendedRadio.noAnswer;

  void onChange(CowSyntheticBlendedRadio value) {
    charcter = value;
    update();
  }
}
