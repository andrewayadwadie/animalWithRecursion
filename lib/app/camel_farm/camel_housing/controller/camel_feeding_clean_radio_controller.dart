import 'package:get/get.dart';

enum CamelCleanFeeding { clean, unClean ,noAnswer }

class CamelCleanFeedingController extends GetxController {
  CamelCleanFeeding charcter = CamelCleanFeeding.noAnswer;

  void onChange(CamelCleanFeeding value) {
    charcter = value;
    update();
  }
}
