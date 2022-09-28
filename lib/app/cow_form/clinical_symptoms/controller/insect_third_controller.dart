import 'package:get/get.dart';

enum InsectThirdExist { yes, no }

class InsectThirdController extends GetxController {
  InsectThirdExist charcter = InsectThirdExist.yes;

  void onChange(InsectThirdExist value) {
    charcter = value;

    update();
  }
}