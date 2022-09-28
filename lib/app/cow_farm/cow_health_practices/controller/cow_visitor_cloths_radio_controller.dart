import 'package:get/get.dart';

enum CowVisitorClothsRadio { yes, no ,noAnswer }

class CowVisitorClothsRadioController extends GetxController {
  CowVisitorClothsRadio charcter = CowVisitorClothsRadio.noAnswer;

  void onChange(CowVisitorClothsRadio value) {
    charcter = value;
    update();
  }
}
