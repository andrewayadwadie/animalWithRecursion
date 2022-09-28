import 'package:get/get.dart';

enum CowUnsatisfactoryAbortionRadio { yes, no ,noAnswer}

class CowUnsatisfactoryAbortionRadioController extends GetxController {
  CowUnsatisfactoryAbortionRadio charcter = CowUnsatisfactoryAbortionRadio.noAnswer;

  void onChange(CowUnsatisfactoryAbortionRadio value) {
    charcter = value;
    update();
  }
}
