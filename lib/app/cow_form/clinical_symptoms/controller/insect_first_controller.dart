import 'package:get/get.dart';

enum InsectFirstExist { yes, no }

class InsectFirstController extends GetxController {
  InsectFirstExist charcter = InsectFirstExist.yes;

  void onChange(InsectFirstExist value) {
    charcter = value;

    update();
  }
}