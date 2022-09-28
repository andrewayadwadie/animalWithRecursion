
import 'package:get/get.dart';

enum GoatSlaughterPlacerRadio { yes, no,noAnswer }

class GoatSlaughterPlacerRadioController extends GetxController {
  GoatSlaughterPlacerRadio charcter = GoatSlaughterPlacerRadio.noAnswer;

  void onChange(GoatSlaughterPlacerRadio value) {
    charcter = value;
    update();
  }
}
