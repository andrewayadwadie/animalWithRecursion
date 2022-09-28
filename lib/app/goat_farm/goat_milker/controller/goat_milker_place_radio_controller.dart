import 'package:get/get.dart';

enum GoatMilkerPlaceRadio { yes, no ,noAnswer}

class GoatMilkerPlaceRadioController extends GetxController {
  GoatMilkerPlaceRadio charcter = GoatMilkerPlaceRadio.noAnswer;

  void onChange(GoatMilkerPlaceRadio value) {
    charcter = value;
    update();
  }
}
