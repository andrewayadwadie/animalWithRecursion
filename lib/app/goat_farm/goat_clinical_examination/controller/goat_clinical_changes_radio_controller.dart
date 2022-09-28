import 'package:get/get.dart';

enum GoatClinicalChangesRadio { yes, no,noAnswer }

class GoatClinicalChangesRadioController extends GetxController {
  GoatClinicalChangesRadio charcter = GoatClinicalChangesRadio.noAnswer;

  void onChange(GoatClinicalChangesRadio value) {
    charcter = value;
    update();
  }
}
