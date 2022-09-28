import 'package:get/get.dart';

enum MiscarriageIntroExist { yes, no }

class MiscarriageIntroController extends GetxController {
  MiscarriageIntroExist charcter = MiscarriageIntroExist.yes;

  void onChange(MiscarriageIntroExist value) {
    charcter = value;

    update();
  }
}

