import 'package:get/get.dart';

enum SheepReproductionRadio { yes, no ,noAnswer}

class SheepReproductionRadioController extends GetxController {
  SheepReproductionRadio charcter = SheepReproductionRadio.noAnswer;

  void onChange(SheepReproductionRadio value) {
    charcter = value;
    update();
  }
}
