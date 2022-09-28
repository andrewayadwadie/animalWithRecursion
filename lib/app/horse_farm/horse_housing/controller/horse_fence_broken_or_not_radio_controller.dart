

import 'package:get/get.dart';

enum HorseBrokenFence { broken , good ,noAnswer }

class HorseBrokenFenceController extends GetxController {
  HorseBrokenFence charcter = HorseBrokenFence.noAnswer;

  void onChange(HorseBrokenFence value) {
    charcter = value;
    update();
  }
}
