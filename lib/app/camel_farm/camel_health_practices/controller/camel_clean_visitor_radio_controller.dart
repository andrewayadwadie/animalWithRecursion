import 'package:get/get.dart';

enum CamelCleanVisitorRadio { yes, no,noAnswer }

class CamelCleanVisitorRadioController extends GetxController {
  CamelCleanVisitorRadio charcter = CamelCleanVisitorRadio.noAnswer;

  void onChange(CamelCleanVisitorRadio value) {
    charcter = value;
    update();
  }
}
