import 'package:get/get.dart';

enum SheepDipperRadio { after, before,noAnswer }

class SheepDipperRadioController extends GetxController {
  SheepDipperRadio charcter = SheepDipperRadio.noAnswer;

  void onChange(SheepDipperRadio value) {
    charcter = value;
    update();
  }
}
