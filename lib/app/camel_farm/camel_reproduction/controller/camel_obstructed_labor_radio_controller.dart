import 'package:get/get.dart';

enum CamelobstructedLaborRadio { yes, no,noAnswer }

class CamelobstructedLaborRadioController extends GetxController {
  CamelobstructedLaborRadio charcter = CamelobstructedLaborRadio.noAnswer;

  void onChange(CamelobstructedLaborRadio value) {
    charcter = value;
    update();
  }
}
