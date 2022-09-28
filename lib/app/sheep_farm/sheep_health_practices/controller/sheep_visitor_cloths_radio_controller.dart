import 'package:get/get.dart';

enum SheepVisitorClothsRadio { yes, no ,noAnswer }

class SheepVisitorClothsRadioController extends GetxController {
  SheepVisitorClothsRadio charcter = SheepVisitorClothsRadio.noAnswer;

  void onChange(SheepVisitorClothsRadio value) {
    charcter = value;
    update();
  }
}
