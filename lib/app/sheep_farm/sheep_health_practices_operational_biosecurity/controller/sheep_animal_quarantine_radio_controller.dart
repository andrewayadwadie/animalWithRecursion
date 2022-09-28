import 'package:get/get.dart';

enum SheepAnimalIsolateQuarantineRadio { yes, no,noAnswer }

class SheepAnimalIsolateQuarantineRadioController extends GetxController {
  SheepAnimalIsolateQuarantineRadio charcter = SheepAnimalIsolateQuarantineRadio.noAnswer;

  void onChange(SheepAnimalIsolateQuarantineRadio value) {
    charcter = value;
    update();
  }
}
