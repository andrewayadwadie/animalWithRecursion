import 'package:get/get.dart';

enum CamelVisitorClothsRadio { yes, no ,noAnswer }

class CamelVisitorClothsRadioController extends GetxController {
  CamelVisitorClothsRadio charcter = CamelVisitorClothsRadio.noAnswer;

  void onChange(CamelVisitorClothsRadio value) {
    charcter = value;
    update();
  }
}
