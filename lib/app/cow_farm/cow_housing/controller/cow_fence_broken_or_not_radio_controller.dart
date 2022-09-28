

import 'package:get/get.dart';

enum CowBrokenFence { broken , good ,noAnswer }

class CowBrokenFenceController extends GetxController {
  CowBrokenFence charcter = CowBrokenFence.noAnswer;

  void onChange(CowBrokenFence value) {
    charcter = value;
    update();
  }
}
