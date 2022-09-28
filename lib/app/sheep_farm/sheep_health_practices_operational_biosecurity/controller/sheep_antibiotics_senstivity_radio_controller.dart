import 'package:get/get.dart';

enum SheepAntibioticsSenstivityRadio { yes, no,noAnswer }

class SheepAntibioticsSenstivityRadioController extends GetxController {
  SheepAntibioticsSenstivityRadio charcter = SheepAntibioticsSenstivityRadio.noAnswer;

  void onChange(SheepAntibioticsSenstivityRadio value) {
    charcter = value;
    update();
  }
}

