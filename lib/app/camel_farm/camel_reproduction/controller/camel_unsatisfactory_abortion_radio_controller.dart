import 'package:get/get.dart';

enum CamelUnsatisfactoryAbortionRadio { yes, no ,noAnswer}

class CamelUnsatisfactoryAbortionRadioController extends GetxController {
  CamelUnsatisfactoryAbortionRadio charcter = CamelUnsatisfactoryAbortionRadio.noAnswer;

  void onChange(CamelUnsatisfactoryAbortionRadio value) {
    charcter = value;
    update();
  }
}
