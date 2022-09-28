import 'package:get/get.dart';

enum AritificialSeventhExist { yes, no }

class AritificialSeventhController extends GetxController {
  AritificialSeventhExist charcter = AritificialSeventhExist.yes;

  void onChange(AritificialSeventhExist value) {
    charcter = value;

    update();
  }
}