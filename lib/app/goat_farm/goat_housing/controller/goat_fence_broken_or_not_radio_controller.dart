

import 'package:get/get.dart';

enum GoatBrokenFence { broken , good ,noAnswer }

class GoatBrokenFenceController extends GetxController {
  GoatBrokenFence charcter = GoatBrokenFence.noAnswer;

  void onChange(GoatBrokenFence value) {
    charcter = value;
    update();
  }
}
