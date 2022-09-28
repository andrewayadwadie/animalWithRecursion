import 'package:get/get.dart';

enum SheepFarmUmberella { yes, no ,noAnswer}

class SheepFarmUmberellaController extends GetxController {
  SheepFarmUmberella charcter = SheepFarmUmberella.noAnswer;

  void onChange(SheepFarmUmberella value) {
    charcter = value;
    update();
  }
}
