import 'package:get/get.dart';

enum InsectSecondExist { yes, no }

class InsectSecondController extends GetxController {
  InsectSecondExist charcter = InsectSecondExist.yes;

  void onChange(InsectSecondExist value) {
    charcter = value;

    update();
  }
}