import 'package:get/get.dart';

enum GoatMIlkSampleRadio { yes, no ,noAnswer}

class GoatMIlkSampleRadioController extends GetxController {
  GoatMIlkSampleRadio charcter = GoatMIlkSampleRadio.noAnswer;

  void onChange(GoatMIlkSampleRadio value) {
    charcter = value;
    update();
  }
}
