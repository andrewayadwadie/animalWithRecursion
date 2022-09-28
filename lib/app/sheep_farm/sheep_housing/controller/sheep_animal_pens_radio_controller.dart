import 'package:get/get.dart';

enum SheepPensRadio { yes, no ,noAnswer}

class SheepPensRadioController extends GetxController {
  SheepPensRadio charcter = SheepPensRadio.noAnswer;

  void onChange(SheepPensRadio value) {
    charcter = value;
    update();
  }
}
