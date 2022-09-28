import 'package:get/get.dart';

enum SheepIsolatePlaceRadio { yes, no ,noAnswer}

class SheepIsolatePlaceRadioController extends GetxController {
  SheepIsolatePlaceRadio charcter = SheepIsolatePlaceRadio.noAnswer;

  void onChange(SheepIsolatePlaceRadio value) {
    charcter = value;
    update();
  }
}
