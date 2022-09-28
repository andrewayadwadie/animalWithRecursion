import 'package:get/get.dart';

enum CowCleanFeeding { clean, unClean ,noAnswer }

class CowCleanFeedingController extends GetxController {
  CowCleanFeeding charcter = CowCleanFeeding.noAnswer;

  void onChange(CowCleanFeeding value) {
    charcter = value;
    update();
  }
}
