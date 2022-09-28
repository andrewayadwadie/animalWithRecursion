import 'package:get/get.dart';

enum GoatFarmUmberella { yes, no ,noAnswer}

class GoatFarmUmberellaController extends GetxController {
  GoatFarmUmberella charcter = GoatFarmUmberella.noAnswer;

  void onChange(GoatFarmUmberella value) {
    charcter = value;
    update();
  }
}
