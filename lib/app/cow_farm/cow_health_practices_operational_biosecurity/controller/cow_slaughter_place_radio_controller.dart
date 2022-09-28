
import 'package:get/get.dart';

enum CowSlaughterPlacerRadio { yes, no,noAnswer }

class CowSlaughterPlacerRadioController extends GetxController {
  CowSlaughterPlacerRadio charcter = CowSlaughterPlacerRadio.noAnswer;

  void onChange(CowSlaughterPlacerRadio value) {
    charcter = value;
    update();
  }
}
