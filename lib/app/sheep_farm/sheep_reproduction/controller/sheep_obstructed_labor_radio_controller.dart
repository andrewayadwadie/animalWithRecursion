import 'package:get/get.dart';

enum SheepobstructedLaborRadio { yes, no,noAnswer }

class SheepobstructedLaborRadioController extends GetxController {
  SheepobstructedLaborRadio charcter = SheepobstructedLaborRadio.noAnswer;

  void onChange(SheepobstructedLaborRadio value) {
    charcter = value;
    update();
  }
}
