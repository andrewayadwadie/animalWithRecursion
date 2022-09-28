import 'package:get/get.dart';

enum GoatVisitorClothsRadio { yes, no ,noAnswer }

class GoatVisitorClothsRadioController extends GetxController {
  GoatVisitorClothsRadio charcter = GoatVisitorClothsRadio.noAnswer;

  void onChange(GoatVisitorClothsRadio value) {
    charcter = value;
    update();
  }
}
