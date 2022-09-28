import 'package:get/get.dart';

enum SheepUdderWashedRadio { after, before,noAnswer }

class SheepUdderWashedRadioController extends GetxController {
  SheepUdderWashedRadio charcter = SheepUdderWashedRadio.noAnswer;

  void onChange(SheepUdderWashedRadio value) {
    charcter = value;
    update();
  }
}
