import 'package:get/get.dart';

enum FetusesSizeExist { yes, no }

class FetusesSizeController extends GetxController {
  FetusesSizeExist charcter = FetusesSizeExist.yes;

  void onChange(FetusesSizeExist value) {
    charcter = value;

    update();
  }
}