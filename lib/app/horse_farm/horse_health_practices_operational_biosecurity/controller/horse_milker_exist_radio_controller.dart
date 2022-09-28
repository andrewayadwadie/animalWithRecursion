import 'package:get/get.dart';

enum HorseMilkerExistRadio { yes, no ,noAnswer}

class HorseMilkerExistRadioController extends GetxController {
  HorseMilkerExistRadio charcter = HorseMilkerExistRadio.noAnswer;

  void onChange(HorseMilkerExistRadio value) {
    charcter = value;
    update();
  }
}

