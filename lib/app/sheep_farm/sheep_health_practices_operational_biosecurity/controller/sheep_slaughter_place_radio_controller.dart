
import 'package:get/get.dart';

enum SheepSlaughterPlacerRadio { yes, no,noAnswer }

class SheepSlaughterPlacerRadioController extends GetxController {
  SheepSlaughterPlacerRadio charcter = SheepSlaughterPlacerRadio.noAnswer;

  void onChange(SheepSlaughterPlacerRadio value) {
    charcter = value;
    update();
  }
}
