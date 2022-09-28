import 'package:get/get.dart';

enum SheepWorkersClothsRadio { yes, no,noAnswer }

class SheepWorkersClothsRadioController extends GetxController {
  SheepWorkersClothsRadio charcter = SheepWorkersClothsRadio.noAnswer;

  void onChange(SheepWorkersClothsRadio value) {
    charcter = value;
    update();
  }
}
