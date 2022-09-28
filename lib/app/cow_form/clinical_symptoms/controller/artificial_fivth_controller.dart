import 'package:get/get.dart';

enum AritificialFivthExist { yes, no }

class AritificialFivthController extends GetxController {
  AritificialFivthExist charcter = AritificialFivthExist.yes;

  void onChange(AritificialFivthExist value) {
    charcter = value;

    update();
  }
}