import 'package:get/get.dart';

enum CowClinicalChangesRadio { yes, no,noAnswer }

class CowClinicalChangesRadioController extends GetxController {
  CowClinicalChangesRadio charcter = CowClinicalChangesRadio.noAnswer;

  void onChange(CowClinicalChangesRadio value) {
    charcter = value;
    update();
  }
}
