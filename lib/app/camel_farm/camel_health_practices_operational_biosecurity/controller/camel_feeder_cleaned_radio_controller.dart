import 'package:get/get.dart';

enum CamelFeederrCleanedRadio { yes, no,noAnswer }

class CamelFeederrCleanedRadioController extends GetxController {
  CamelFeederrCleanedRadio charcter = CamelFeederrCleanedRadio.noAnswer;

  void onChange(CamelFeederrCleanedRadio value) {
    charcter = value;
    update();
  }
}
