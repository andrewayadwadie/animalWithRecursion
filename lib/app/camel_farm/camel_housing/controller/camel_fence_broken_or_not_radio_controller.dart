

import 'package:get/get.dart';

enum CamelBrokenFence { broken , good ,noAnswer }

class CamelBrokenFenceController extends GetxController {
  CamelBrokenFence charcter = CamelBrokenFence.noAnswer;

  void onChange(CamelBrokenFence value) {
    charcter = value;
    update();
  }
}
