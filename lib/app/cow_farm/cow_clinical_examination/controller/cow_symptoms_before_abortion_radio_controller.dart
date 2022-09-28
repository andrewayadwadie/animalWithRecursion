import 'package:get/get.dart';

enum CowSymptomsBeforeAbortionRadio { yes, no,noAnswer }

class CowSymptomsBeforeAbortionRadioController extends GetxController {
  CowSymptomsBeforeAbortionRadio charcter =
      CowSymptomsBeforeAbortionRadio.noAnswer;

  void onChange(CowSymptomsBeforeAbortionRadio value) {
    charcter = value;
    update();
  }
}
