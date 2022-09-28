import 'package:get/get.dart';

enum GoatSyntheticBlendedRadio { synthetic,blended ,noAnswer}

class GoatSyntheticBlendedRadioController extends GetxController {
  GoatSyntheticBlendedRadio charcter = GoatSyntheticBlendedRadio.noAnswer;

  void onChange(GoatSyntheticBlendedRadio value) {
    charcter = value;
    update();
  }
}
