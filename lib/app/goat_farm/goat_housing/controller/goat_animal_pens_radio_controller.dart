import 'package:get/get.dart';

enum GoatPensRadio { yes, no ,noAnswer}

class GoatPensRadioController extends GetxController {
  GoatPensRadio charcter = GoatPensRadio.noAnswer;

  void onChange(GoatPensRadio value) {
    charcter = value;
    update();
  }
}
