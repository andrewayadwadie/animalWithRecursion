import 'package:get/get.dart';

enum SheepClinicalChangesRadio { yes, no,noAnswer }

class SheepClinicalChangesRadioController extends GetxController {
  SheepClinicalChangesRadio charcter = SheepClinicalChangesRadio.noAnswer;

  void onChange(SheepClinicalChangesRadio value) {
    charcter = value;
    update();
  }
}
