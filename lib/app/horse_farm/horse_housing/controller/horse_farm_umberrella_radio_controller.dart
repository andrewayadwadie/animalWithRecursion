import 'package:get/get.dart';

enum HorseFarmUmberella { yes, no ,noAnswer}

class HorseFarmUmberellaController extends GetxController {
  HorseFarmUmberella charcter = HorseFarmUmberella.noAnswer;

  void onChange(HorseFarmUmberella value) {
    charcter = value;
    update();
  }
}
