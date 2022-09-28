import 'package:get/get.dart';

enum SheepFeedingLocation { underCanopy, outdoors ,noAnswer }

class SheepFeedingLocationController extends GetxController {
  SheepFeedingLocation charcter = SheepFeedingLocation.noAnswer;

  void onChange(SheepFeedingLocation value) {
    charcter = value;
    update();
  }
}
