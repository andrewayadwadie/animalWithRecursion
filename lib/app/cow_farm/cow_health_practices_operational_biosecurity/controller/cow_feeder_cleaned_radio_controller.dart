import 'package:get/get.dart';

enum CowFeederrCleanedRadio { yes, no,noAnswer }

class CowFeederrCleanedRadioController extends GetxController {
  CowFeederrCleanedRadio charcter = CowFeederrCleanedRadio.noAnswer;

  void onChange(CowFeederrCleanedRadio value) {
    charcter = value;
    update();
  }
}
