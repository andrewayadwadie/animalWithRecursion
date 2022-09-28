import 'package:get/get.dart';

enum CowFarmUmberella { yes, no ,noAnswer}

class CowFarmUmberellaController extends GetxController {
  CowFarmUmberella charcter = CowFarmUmberella.noAnswer;

  void onChange(CowFarmUmberella value) {
    charcter = value;
    update();
  }
}
