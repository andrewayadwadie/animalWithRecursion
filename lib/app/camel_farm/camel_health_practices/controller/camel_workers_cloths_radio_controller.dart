import 'package:get/get.dart';

enum CamelWorkersClothsRadio { yes, no,noAnswer }

class CamelWorkersClothsRadioController extends GetxController {
  CamelWorkersClothsRadio charcter = CamelWorkersClothsRadio.noAnswer;

  void onChange(CamelWorkersClothsRadio value) {
    charcter = value;
    update();
  }
}
