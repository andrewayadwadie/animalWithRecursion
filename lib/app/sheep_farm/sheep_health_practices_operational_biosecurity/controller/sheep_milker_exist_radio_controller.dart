import 'package:get/get.dart';

enum SheepMilkerExistRadio { yes, no ,noAnswer}

class SheepMilkerExistRadioController extends GetxController {
  SheepMilkerExistRadio charcter = SheepMilkerExistRadio.noAnswer;

  void onChange(SheepMilkerExistRadio value) {
    charcter = value;
    update();
  }
}

