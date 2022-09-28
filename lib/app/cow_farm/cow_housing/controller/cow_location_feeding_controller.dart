import 'package:get/get.dart';

enum CowFeedingLocation { underCanopy, outdoors ,noAnswer }

class CowFeedingLocationController extends GetxController {
  CowFeedingLocation charcter = CowFeedingLocation.noAnswer;

  void onChange(CowFeedingLocation value) {
    charcter = value;
    update();
  }
}
