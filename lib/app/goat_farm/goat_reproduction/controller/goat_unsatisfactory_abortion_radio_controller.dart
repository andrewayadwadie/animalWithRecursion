import 'package:get/get.dart';

enum GoatUnsatisfactoryAbortionRadio { yes, no ,noAnswer}

class GoatUnsatisfactoryAbortionRadioController extends GetxController {
  GoatUnsatisfactoryAbortionRadio charcter = GoatUnsatisfactoryAbortionRadio.noAnswer;

  void onChange(GoatUnsatisfactoryAbortionRadio value) {
    charcter = value;
    update();
  }
}
