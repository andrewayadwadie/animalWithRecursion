
import 'package:get/get.dart';

enum CamelMilkerCleanedRadio { yes, no ,noAnswer}

class CamelMilkerCleanedRadioController extends GetxController {
  CamelMilkerCleanedRadio charcter = CamelMilkerCleanedRadio.noAnswer;

  void onChange(CamelMilkerCleanedRadio value) {
    charcter = value;
    update();
  }
}
