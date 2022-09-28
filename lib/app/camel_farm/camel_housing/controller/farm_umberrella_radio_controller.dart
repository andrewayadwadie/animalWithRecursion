import 'package:get/get.dart';

enum CamelFarmUmberella { yes, no ,noAnswer}

class CamelFarmUmberellaController extends GetxController {
  CamelFarmUmberella charcter = CamelFarmUmberella.noAnswer;

  void onChange(CamelFarmUmberella value) {
    charcter = value;
    update();
  }
}
