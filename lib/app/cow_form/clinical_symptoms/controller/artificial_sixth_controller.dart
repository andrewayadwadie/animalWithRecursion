import 'package:get/get.dart';

enum AritificialSixthExist { yes, no }

class AritificialSixthController extends GetxController {
  AritificialSixthExist charcter = AritificialSixthExist.yes;

  void onChange(AritificialSixthExist value) {
    charcter = value;

    update();
  }
}