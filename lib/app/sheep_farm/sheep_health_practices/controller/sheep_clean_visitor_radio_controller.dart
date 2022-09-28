import 'package:get/get.dart';

enum SheepCleanVisitorRadio { yes, no,noAnswer }

class SheepCleanVisitorRadioController extends GetxController {
  SheepCleanVisitorRadio charcter = SheepCleanVisitorRadio.noAnswer;

  void onChange(SheepCleanVisitorRadio value) {
    charcter = value;
    update();
  }
}
