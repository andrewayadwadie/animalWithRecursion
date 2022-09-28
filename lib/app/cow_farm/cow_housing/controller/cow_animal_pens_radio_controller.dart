import 'package:get/get.dart';

enum CowPensRadio { yes, no ,noAnswer}

class CowPensRadioController extends GetxController {
  CowPensRadio charcter = CowPensRadio.noAnswer;

  void onChange(CowPensRadio value) {
    charcter = value;
    update();
  }
}
