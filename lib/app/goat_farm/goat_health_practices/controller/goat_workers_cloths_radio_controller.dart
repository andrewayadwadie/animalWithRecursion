import 'package:get/get.dart';

enum GoatWorkersClothsRadio { yes, no,noAnswer }

class GoatWorkersClothsRadioController extends GetxController {
  GoatWorkersClothsRadio charcter = GoatWorkersClothsRadio.noAnswer;

  void onChange(GoatWorkersClothsRadio value) {
    charcter = value;
    update();
  }
}
