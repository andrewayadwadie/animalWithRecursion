import 'package:get/get.dart';

enum SyringesExist { yes, no }

class RadioOneController extends GetxController {
  SyringesExist charcter = SyringesExist.yes;

  void onChange(SyringesExist value) {
    charcter = value;

    update();
  }
}

