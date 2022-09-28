
import 'package:get/get.dart';

enum CamelSlaughterPlacerRadio { yes, no,noAnswer }

class CamelSlaughterPlacerRadioController extends GetxController {
  CamelSlaughterPlacerRadio charcter = CamelSlaughterPlacerRadio.noAnswer;

  void onChange(CamelSlaughterPlacerRadio value) {
    charcter = value;
    update();
  }
}
