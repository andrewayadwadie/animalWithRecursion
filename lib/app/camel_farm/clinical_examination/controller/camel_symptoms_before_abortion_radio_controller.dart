import 'package:get/get.dart';

enum CamelSymptomsBeforeAbortionRadio { yes, no,noAnswer }

class CamelSymptomsBeforeAbortionRadioController extends GetxController {
  CamelSymptomsBeforeAbortionRadio charcter =
      CamelSymptomsBeforeAbortionRadio.noAnswer;

  void onChange(CamelSymptomsBeforeAbortionRadio value) {
    charcter = value;
    update();
  }
}
