import 'package:get/get.dart';

enum CowMilkerExistRadio { yes, no ,noAnswer}

class CowMilkerExistRadioController extends GetxController {
  CowMilkerExistRadio charcter = CowMilkerExistRadio.noAnswer;

  void onChange(CowMilkerExistRadio value) {
    charcter = value;
    update();
  }
}

