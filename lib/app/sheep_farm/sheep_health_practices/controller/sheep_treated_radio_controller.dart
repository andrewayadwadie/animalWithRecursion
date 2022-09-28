import 'package:get/get.dart';

enum SheepTreatedRadio { yes, no,noAnswer }

class SheepTreatedRadioController extends GetxController {
  SheepTreatedRadio charcter = SheepTreatedRadio.noAnswer;

  void onChange(SheepTreatedRadio value) {
    charcter = value;
    update();
  }
}
