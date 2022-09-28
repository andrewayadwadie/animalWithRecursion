import 'package:get/get.dart';

enum CowobstructedLaborRadio { yes, no,noAnswer }

class CowobstructedLaborRadioController extends GetxController {
  CowobstructedLaborRadio charcter = CowobstructedLaborRadio.noAnswer;

  void onChange(CowobstructedLaborRadio value) {
    charcter = value;
    update();
  }
}
