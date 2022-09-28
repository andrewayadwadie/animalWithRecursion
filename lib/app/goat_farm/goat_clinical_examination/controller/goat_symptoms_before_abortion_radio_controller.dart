import 'package:get/get.dart';

enum GoatSymptomsBeforeAbortionRadio { yes, no,noAnswer }

class GoatSymptomsBeforeAbortionRadioController extends GetxController {
  GoatSymptomsBeforeAbortionRadio charcter =
      GoatSymptomsBeforeAbortionRadio.noAnswer;

  void onChange(GoatSymptomsBeforeAbortionRadio value) {
    charcter = value;
    update();
  }
}
