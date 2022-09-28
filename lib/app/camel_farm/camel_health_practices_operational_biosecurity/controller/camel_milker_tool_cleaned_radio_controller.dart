
import 'package:get/get.dart';

enum CamelMilkerToolsCleanedRadio { yes, no,noAnswer }

class CamelMilkerToolsCleanedRadioController extends GetxController {
  CamelMilkerToolsCleanedRadio charcter = CamelMilkerToolsCleanedRadio.noAnswer;

  void onChange(CamelMilkerToolsCleanedRadio value) {
    charcter = value;
    update();
  }
}
