import 'package:get/get.dart';

enum HorsePensRadio { yes, no ,noAnswer}

class HorsePensRadioController extends GetxController {
  HorsePensRadio charcter = HorsePensRadio.noAnswer;

  void onChange(HorsePensRadio value) {
    charcter = value;
    update();
  }
}
