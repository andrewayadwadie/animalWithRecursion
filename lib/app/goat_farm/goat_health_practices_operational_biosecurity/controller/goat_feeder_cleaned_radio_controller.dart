import 'package:get/get.dart';

enum GoatFeederrCleanedRadio { yes, no,noAnswer }

class GoatFeederrCleanedRadioController extends GetxController {
  GoatFeederrCleanedRadio charcter = GoatFeederrCleanedRadio.noAnswer;

  void onChange(GoatFeederrCleanedRadio value) {
    charcter = value;
    update();
  }
}
