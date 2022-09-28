import 'package:get/get.dart';

enum CamelClinicalChangesRadio { yes, no,noAnswer }

class CamelClinicalChangesRadioController extends GetxController {
  CamelClinicalChangesRadio charcter = CamelClinicalChangesRadio.noAnswer;

  void onChange(CamelClinicalChangesRadio value) {
    charcter = value;
    update();
  }
}
