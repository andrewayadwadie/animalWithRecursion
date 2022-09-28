import 'package:get/get.dart';

enum GoatobstructedLaborRadio { yes, no,noAnswer }

class GoatobstructedLaborRadioController extends GetxController {
  GoatobstructedLaborRadio charcter = GoatobstructedLaborRadio.noAnswer;

  void onChange(GoatobstructedLaborRadio value) {
    charcter = value;
    update();
  }
}
