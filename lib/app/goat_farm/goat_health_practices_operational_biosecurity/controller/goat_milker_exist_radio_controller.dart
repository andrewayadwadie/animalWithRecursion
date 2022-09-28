import 'package:get/get.dart';

enum GoatMilkerExistRadio { yes, no ,noAnswer}

class GoatMilkerExistRadioController extends GetxController {
  GoatMilkerExistRadio charcter = GoatMilkerExistRadio.noAnswer;

  void onChange(GoatMilkerExistRadio value) {
    charcter = value;
    update();
  }
}

