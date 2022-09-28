import 'package:get/get.dart';

enum HorseMilkerPlaceRadio { yes, no ,noAnswer}

class HorseMilkerPlaceRadioController extends GetxController {
  HorseMilkerPlaceRadio charcter = HorseMilkerPlaceRadio.noAnswer;

  void onChange(HorseMilkerPlaceRadio value) {
    charcter = value;
    update();
  }
}
