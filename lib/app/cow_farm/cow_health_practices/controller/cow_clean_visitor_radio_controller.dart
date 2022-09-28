import 'package:get/get.dart';

enum CowCleanVisitorRadio { yes, no,noAnswer }

class CowCleanVisitorRadioController extends GetxController {
  CowCleanVisitorRadio charcter = CowCleanVisitorRadio.noAnswer;

  void onChange(CowCleanVisitorRadio value) {
    charcter = value;
    update();
  }
}
