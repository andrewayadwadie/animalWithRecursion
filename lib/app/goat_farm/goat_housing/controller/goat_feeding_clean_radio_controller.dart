import 'package:get/get.dart';

enum GoatCleanFeeding { clean, unClean ,noAnswer }

class GoatCleanFeedingController extends GetxController {
  GoatCleanFeeding charcter = GoatCleanFeeding.noAnswer;

  void onChange(GoatCleanFeeding value) {
    charcter = value;
    update();
  }
}
