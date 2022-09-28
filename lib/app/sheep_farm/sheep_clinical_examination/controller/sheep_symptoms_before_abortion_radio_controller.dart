import 'package:get/get.dart';

enum SheepSymptomsBeforeAbortionRadio { yes, no,noAnswer }

class SheepSymptomsBeforeAbortionRadioController extends GetxController {
  SheepSymptomsBeforeAbortionRadio charcter =
      SheepSymptomsBeforeAbortionRadio.noAnswer;

  void onChange(SheepSymptomsBeforeAbortionRadio value) {
    charcter = value;
    update();
  }
}
