import 'package:get/get.dart';

enum HorseSymptomsBeforeAbortionRadio { yes, no,noAnswer }

class HorseSymptomsBeforeAbortionRadioController extends GetxController {
  HorseSymptomsBeforeAbortionRadio charcter =
      HorseSymptomsBeforeAbortionRadio.noAnswer;

  void onChange(HorseSymptomsBeforeAbortionRadio value) {
    charcter = value;
    update();
  }
}
