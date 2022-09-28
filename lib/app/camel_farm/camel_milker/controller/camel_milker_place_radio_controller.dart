import 'package:get/get.dart';

enum CamelMilkerPlaceRadio { yes, no ,noAnswer}

class CamelMilkerPlaceRadioController extends GetxController {
  CamelMilkerPlaceRadio charcter = CamelMilkerPlaceRadio.noAnswer;

  void onChange(CamelMilkerPlaceRadio value) {
    charcter = value;
    update();
  }
}
