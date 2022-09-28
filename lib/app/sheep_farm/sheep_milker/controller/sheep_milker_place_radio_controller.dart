import 'package:get/get.dart';

enum SheepMilkerPlaceRadio { yes, no ,noAnswer}

class SheepMilkerPlaceRadioController extends GetxController {
  SheepMilkerPlaceRadio charcter = SheepMilkerPlaceRadio.noAnswer;

  void onChange(SheepMilkerPlaceRadio value) {
    charcter = value;
    update();
  }
}
