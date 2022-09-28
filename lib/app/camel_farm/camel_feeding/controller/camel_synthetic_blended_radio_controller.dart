import 'package:get/get.dart';

enum CamelSyntheticBlendedRadio { synthetic,blended ,noAnswer}

class CamelSyntheticBlendedRadioController extends GetxController {
  CamelSyntheticBlendedRadio charcter = CamelSyntheticBlendedRadio.noAnswer;

  void onChange(CamelSyntheticBlendedRadio value) {
    charcter = value;
    update();
  }
}
