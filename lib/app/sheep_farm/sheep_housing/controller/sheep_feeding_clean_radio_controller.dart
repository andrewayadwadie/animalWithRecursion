import 'package:get/get.dart';

enum SheepCleanFeeding { clean, unClean ,noAnswer }

class SheepCleanFeedingController extends GetxController {
  SheepCleanFeeding charcter = SheepCleanFeeding.noAnswer;

  void onChange(SheepCleanFeeding value) {
    charcter = value;
    update();
  }
}
