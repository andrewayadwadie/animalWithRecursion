import 'package:get/get.dart';

enum HorseUnsatisfactoryAbortionRadio { yes, no ,noAnswer}

class HorseUnsatisfactoryAbortionRadioController extends GetxController {
  HorseUnsatisfactoryAbortionRadio charcter = HorseUnsatisfactoryAbortionRadio.noAnswer;

  void onChange(HorseUnsatisfactoryAbortionRadio value) {
    charcter = value;
    update();
  }
}
