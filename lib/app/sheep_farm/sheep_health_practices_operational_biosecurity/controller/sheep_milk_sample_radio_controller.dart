import 'package:get/get.dart';

enum SheepMIlkSampleRadio { yes, no ,noAnswer}

class SheepMIlkSampleRadioController extends GetxController {
  SheepMIlkSampleRadio charcter = SheepMIlkSampleRadio.noAnswer;

  void onChange(SheepMIlkSampleRadio value) {
    charcter = value;
    update();
  }
}
