import 'package:get/get.dart';

enum CowWorkersClothsRadio { yes, no,noAnswer }

class CowWorkersClothsRadioController extends GetxController {
  CowWorkersClothsRadio charcter = CowWorkersClothsRadio.noAnswer;

  void onChange(CowWorkersClothsRadio value) {
    charcter = value;
    update();
  }
}
