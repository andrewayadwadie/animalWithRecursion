import 'package:get/get.dart';

enum SheepUnsatisfactoryAbortionRadio { yes, no ,noAnswer}

class SheepUnsatisfactoryAbortionRadioController extends GetxController {
  SheepUnsatisfactoryAbortionRadio charcter = SheepUnsatisfactoryAbortionRadio.noAnswer;

  void onChange(SheepUnsatisfactoryAbortionRadio value) {
    charcter = value;
    update();
  }
}
