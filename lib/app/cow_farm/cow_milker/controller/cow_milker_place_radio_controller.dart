import 'package:get/get.dart';

enum CowMilkerPlaceRadio { yes, no ,noAnswer}

class CowMilkerPlaceRadioController extends GetxController {
  CowMilkerPlaceRadio charcter = CowMilkerPlaceRadio.noAnswer;

  void onChange(CowMilkerPlaceRadio value) {
    charcter = value;
    update();
  }
}
