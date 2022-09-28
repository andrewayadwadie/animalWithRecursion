import 'package:get/get.dart';

enum CamelMilkerExistRadio { yes, no ,noAnswer}

class CamelMilkerExistRadioController extends GetxController {
  CamelMilkerExistRadio charcter = CamelMilkerExistRadio.noAnswer;

  void onChange(CamelMilkerExistRadio value) {
    charcter = value;
    update();
  }
}

